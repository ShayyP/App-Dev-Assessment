<?php
// REST service, used to interact with the database. Accessed via URL modification which is done with ajax in my scripts
require "dbinfo.php";
require "RestService.php";
require "classes.php";
 
class CrimeRestService extends RestService
{
	private $return_array;
    
	public function __construct()
    {
		parent::__construct("query");
	}

	public function performGet($url, $parameters, $requestBody, $accept) 
	{
        // If crime or county not specified, get all
        if(sizeof($parameters) == 2)
        {
            $this->getAll($parameters);
        } // Otherwise get the specified data
        elseif(sizeof($parameters) == 3)
        {
            if($parameters[2] == "totals")
            {
                $this->getTotals();
            }
            else
            {
                $this->getSpecific($parameters);
            }
        }
        elseif(sizeof($parameters) == 4)
        {
            $this->getAmountOnly($parameters);
        }
	}

    // Gets all crimes or counties from the database
    public function getAll($parameters)
    {
        global $dbserver, $dbusername, $dbpassword, $dbdatabase;
        $queryType = $parameters[1];
        $query = "";
        $valid = false;

        // Prepare the query against the database
        if($queryType == "county")
        {
            $query = "SELECT County.CountyName AS county FROM County";
            $valid = true;
        } elseif($queryType == "crime")
        {
            $query = "SELECT Crime.CrimeName AS crime FROM Crime";
            $valid = true;
        }
        else
        {
            $this->methodNotAllowedResponse();
        }

        if($valid)
        {
            $connection = new mysqli($dbserver, $dbusername, $dbpassword, $dbdatabase);
            if(!$connection->connect_error)
            {
                $statement = $connection->prepare($query);
                // Now execute the query
                $statement->execute();
                $result = $statement->get_result();

                while($row = $result->fetch_assoc())
                {
                    if($queryType == "county")
                    {
                        $this->return_array[] = $row["county"];
                    }
                    elseif($queryType == "crime")
                    {
                        $this->return_array[] = $row["crime"];
                    }
                }

                $statement->close();
                $connection->close();

                header('Content-Type: application/json; charset=utf-8');
                header('no-cache,no-store');
                echo json_encode($this->return_array);
            }
        }
    }

    // Get the amount of a crime in a specific county, used to populate fields in the edit forms
    public function getAmountOnly($parameters)
    {
        global $dbserver, $dbusername, $dbpassword, $dbdatabase;
        $county = $parameters[2];
        $crime = $parameters[3];

        $connection = new mysqli($dbserver, $dbusername, $dbpassword, $dbdatabase);
        if(!$connection->connect_error)
        {
            // Prepare the query against the database
            $query = "SELECT Record.Amount as amount FROM Record, County, Crime" .
                " WHERE Record.CountyID = County.CountyID AND County.CountyName = ? " .
                " AND Record.CrimeID = Crime.CrimeID AND Crime.CrimeName = ?";
            $statement = $connection->prepare($query);
            // Bind the parameter
            $statement->bind_param('ss', $county, $crime);
            // Now execute the query
            $statement->execute();
            $result = $statement->get_result();

            while($row = $result->fetch_assoc())
            {
                $this->return_array = $row["amount"];
            }

            $statement->close();
            $connection->close();

            header('Content-Type: application/json; charset=utf-8');
            header('no-cache,no-store');
            echo json_encode($this->return_array);
        }
    }

    // Gets the total amount of crime in each county
    public function getTotals()
    {
        global $dbserver, $dbusername, $dbpassword, $dbdatabase;

        $connection = new mysqli($dbserver, $dbusername, $dbpassword, $dbdatabase);
        if(!$connection->connect_error)
        {
            // Prepare the query against the database
            $query = "SELECT County.CountyName AS county, SUM(Record.Amount) AS total FROM Record, County" .
                " WHERE County.CountyID = Record.CountyID " .
                " GROUP BY County.CountyID";
            $statement = $connection->prepare($query);
            // Now execute the query
            $statement->execute();
            $result = $statement->get_result();

            while($row = $result->fetch_assoc())
            {
                $this->return_array[] = new crime($row["county"], $row["total"]);
            }

            $statement->close();
            $connection->close();

            header('Content-Type: application/json; charset=utf-8');
            header('no-cache,no-store');
            echo json_encode($this->return_array);
        }
    }

    // Gets amount of crime by crime type or county
	public function getSpecific($parameters)
    {
        global $dbserver, $dbusername, $dbpassword, $dbdatabase;
        $queryType = $parameters[1];
        $param = $parameters[2];
        $query = "";
        $valid = false;

        // Prepare the query against the database
        if($queryType == "county")
        {
            $query = "SELECT Crime.CrimeName AS crime, Record.Amount AS amount " .
                "FROM Record, County, Crime " .
                "WHERE Record.CountyID = County.CountyID AND Record.CrimeID = Crime.CrimeID AND County.CountyName = ?";
            $valid = true;
        }
        elseif($queryType == "crime") {
            $query = "SELECT County.CountyName AS county, Record.Amount AS amount " .
                "FROM County, Crime, Record " .
                "WHERE County.CountyID = Record.CountyID AND Record.CrimeID = Crime.CrimeID AND Crime.CrimeName = ?";
            $valid = true;
        }
        else
        {
            $this->methodNotAllowedResponse();
        }

        if($valid)
        {
            $connection = new mysqli($dbserver, $dbusername, $dbpassword, $dbdatabase);
            if(!$connection->connect_error)
            {
                $statement = $connection->prepare($query);
                // Bind the parameter
                $statement->bind_param('s', $param);
                // Now execute the query
                $statement->execute();
                $result = $statement->get_result();

                while($row = $result->fetch_assoc())
                {
                    if($queryType == "county")
                    {
                        $this->return_array[] = new county($row["crime"], $row["amount"]);
                    }
                    elseif($queryType == "crime")
                    {
                        $this->return_array[] = new crime($row["county"], $row["amount"]);
                    }
                }

                $statement->close();
                $connection->close();

                header('Content-Type: application/json; charset=utf-8');
                header('no-cache,no-store');
                echo json_encode($this->return_array);
            }
        }
    }

    public function performPost($url, $parameters, $requestBody, $accept)
    {
        if(sizeof($parameters) == 2){
            $this->addCrime($parameters);
        }
        elseif(sizeof($parameters) == 4){
            $this->addRecord($parameters);
        }
    }

    // Adds a new record to the Crime table if it does not exist already
    public function addCrime($parameters)
    {
        global $dbserver, $dbusername, $dbpassword, $dbdatabase;
        $crime = $parameters[1];

        $connection = new mysqli($dbserver, $dbusername, $dbpassword, $dbdatabase);
        if(!$connection->connect_error)
        {
            $query = "INSERT IGNORE INTO Crime(CrimeID, CrimeName) VALUES(DEFAULT, ?)";
            $statement = $connection->prepare($query);
            // Bind the parameter
            $statement->bind_param('s', $crime);
            // Now execute the query
            $statement->execute();
            $affected_rows = $statement->affected_rows;

            $statement->close();
            $connection->close();

            header('Content-Type: application/json; charset=utf-8');
            header('no-cache,no-store');
            echo json_encode($affected_rows);
        }
    }

    // Adds a new record to the Record table
    public function addRecord($parameters)
    {
        global $dbserver, $dbusername, $dbpassword, $dbdatabase;
        $county = $parameters[1];
        $crime = $parameters[2];
        $amount = $parameters[3];

        $connection = new mysqli($dbserver, $dbusername, $dbpassword, $dbdatabase);
        if(!$connection->connect_error)
        {
            $query = "INSERT INTO Record(CountyID, CrimeID, Amount) " .
                "SELECT County.CountyID, Crime.CrimeID, ? FROM County, Crime " .
                "WHERE County.CountyName = ? AND Crime.CrimeName = ? " .
                "AND (SELECT COUNT(CountyID) FROM Record WHERE CountyID IN " .
                "(SELECT CountyID FROM County WHERE CountyName = ?) AND CrimeID IN" .
                "(SELECT CrimeID FROM Crime WHERE CrimeName = ?)) = 0";
            $statement = $connection->prepare($query);
            // Bind the parameter
            $statement->bind_param('issss', $amount, $county, $crime, $county, $crime);
            // Now execute the query
            $statement->execute();
            $affected_rows = $statement->affected_rows;

            $statement->close();
            $connection->close();

            header('Content-Type: application/json; charset=utf-8');
            header('no-cache,no-store');
            echo json_encode($affected_rows);
        }
    }

    // Updates existing record in the Record table
	public function performPut($url, $parameters, $requestBody, $accept) 
	{
		global $dbserver, $dbusername, $dbpassword, $dbdatabase;
		if($parameters[1] == "reset")
		{
		    $this->reset();
        }
		else
        {
            $county = $parameters[1];
            $crime = $parameters[2];
            $amount = $parameters[3];

            $connection = new mysqli($dbserver, $dbusername, $dbpassword, $dbdatabase);
            if(!$connection->connect_error)
            {
                $query = "UPDATE Record " .
                    "SET Amount = ? " .
                    "WHERE CountyID IN (SELECT CountyID FROM County WHERE CountyName = ?) " .
                    "AND CrimeID IN (SELECT CrimeID FROM Crime WHERE CrimeName = ?)";
                $statement = $connection->prepare($query);
                // Bind the parameter
                $statement->bind_param('iss', $amount, $county, $crime);
                // Now execute the query
                $statement->execute();
                $affected_rows = $statement->affected_rows;

                $statement->close();
                $connection->close();

                header('Content-Type: application/json; charset=utf-8');
                header('no-cache,no-store');
                echo json_encode($affected_rows);
            }
        }
	}

    public function performDelete($url, $parameters, $requestBody, $accept) 
    {
        if(sizeof($parameters) == 2)
        {
            $this->deleteCrime($parameters);
        }
        elseif(sizeof($parameters) == 3)
        {
            $this->deleteRecord($parameters);
        }
    }

    // Deletes a specific record
    public function deleteRecord($parameters)
    {
        global $dbserver, $dbusername, $dbpassword, $dbdatabase;
        $county = $parameters[1];
        $crime = $parameters[2];
        $query = null;
        $statement = null;

        $connection = new mysqli($dbserver, $dbusername, $dbpassword, $dbdatabase);
        if(!$connection->connect_error)
        {
            if($county == "all")
            {
                $query = "DELETE FROM Record " .
                    "WHERE CrimeID IN (SELECT CrimeID FROM Crime WHERE CrimeName = ?)";
                $statement = $connection->prepare($query);
                // Bind the parameter
                $statement->bind_param('s', $crime);
            }
            elseif($crime == "all")
            {
                $query = "DELETE FROM Record " .
                    "WHERE CountyID IN (SELECT CountyID FROM County WHERE CountyName = ?)";
                $statement = $connection->prepare($query);
                // Bind the parameter
                $statement->bind_param('s', $county);
            }
            else
            {
                $query = "DELETE FROM Record " .
                    "WHERE CountyID IN (SELECT CountyID FROM County WHERE CountyName = ?) " .
                    "AND CrimeID IN (SELECT CrimeID FROM Crime WHERE CrimeName = ?)";
                $statement = $connection->prepare($query);
                // Bind the parameter
                $statement->bind_param('ss', $county, $crime);
            }
            // Now execute the query
            $statement->execute();
            $affected_rows = $statement->affected_rows;

            $statement->close();
            $connection->close();

            header('Content-Type: application/json; charset=utf-8');
            header('no-cache,no-store');
            echo json_encode($affected_rows);
        }
    }

    // Deletes from the Crime table
    public function deleteCrime($parameters)
    {
        global $dbserver, $dbusername, $dbpassword, $dbdatabase;
        $crime = $parameters[1];

        $connection = new mysqli($dbserver, $dbusername, $dbpassword, $dbdatabase);
        if(!$connection->connect_error)
        {
            $query = "DELETE FROM Crime WHERE CrimeName = ?";
            $statement = $connection->prepare($query);
            // Bind the parameter
            $statement->bind_param('s', $crime);
            // Now execute the query
            $statement->execute();
            $affected_rows = $statement->affected_rows;

            $statement->close();
            $connection->close();

            header('Content-Type: application/json; charset=utf-8');
            header('no-cache,no-store');
            echo json_encode($affected_rows);
        }
    }

    // Resets the database to the original dataset
    public function reset()
    {
        global $dbserver, $dbusername, $dbpassword, $dbdatabase;

        $connection = new mysqli($dbserver, $dbusername, $dbpassword, $dbdatabase);
        if (!$connection->connect_error){
            // Wipes the table then runs the SQL file which re-inserts all of the original data
            $query = "DELETE FROM Record; " . file_get_contents("insert.sql");
            $statement = $connection->multi_query($query);
            if(!$statement)
            {
                echo $connection->error;
            }

            $connection->close();

            header('Content-Type: application/json; charset=utf-8');
            header('no-cache,no-store');

            echo json_encode("success");
        }
    }
}
