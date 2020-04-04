<?php
    require "dbinfo.php";
    require "RestService.php";
    require "classes.php";
 
class CrimeRestService extends RestService
{
	private $return_array;
    
	public function __construct() {
		parent::__construct("query");
	}

	public function performGet($url, $parameters, $requestBody, $accept) 
	{
        // If crime or county not specified, get all
        if (sizeof($parameters) == 2) {
            $this->getAll($parameters);
        } // Otherwise get the specified data
        elseif (sizeof($parameters) == 3) {
            $this->getSpecific($parameters);
        }
	}

    public function getAll($parameters){
        global $dbserver, $dbusername, $dbpassword, $dbdatabase;
        $queryType = $parameters[1];
        $query = "";
        $valid = false;

        // Prepare the query against the database
        if($queryType == "county") {
            $query = "SELECT County.CountyName AS county FROM County";
            $valid = true;
        } elseif($queryType == "crime") {
            $query = "SELECT Crime.CrimeName AS crime FROM Crime";
            $valid = true;
        }
        else {
            $this->methodNotAllowedResponse();
        }

        if($valid) {
            $connection = new mysqli($dbserver, $dbusername, $dbpassword, $dbdatabase);
            if (!$connection->connect_error) {
                $statement = $connection->prepare($query);
                // Now execute the query
                $statement->execute();
                $result = $statement->get_result();

                while ($row = $result->fetch_assoc()) {
                    if ($queryType == "county") {
                        $this->return_array[] = $row["county"];
                    } elseif ($queryType == "crime") {
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

	public function getSpecific($parameters){
        global $dbserver, $dbusername, $dbpassword, $dbdatabase;
        $queryType = $parameters[1];
        $param = $parameters[2];
        $query = "";
        $valid = false;

        // Prepare the query against the database
        if($queryType == "county") {
            $query = "SELECT Crime.CrimeName AS crime, Record.Amount AS amount " .
                "FROM Record, County, Crime " .
                "WHERE Record.CountyID = County.CountyID AND Record.CrimeID = Crime.CrimeID AND County.CountyName = ?";
            $valid = true;
        } elseif($queryType == "crime") {
            $query = "SELECT County.CountyName AS county, Record.Amount AS amount " .
                "FROM County, Crime, Record " .
                "WHERE County.CountyID = Record.CountyID AND Record.CrimeID = Crime.CrimeID AND Crime.CrimeName = ?";
            $valid = true;
        }
        else {
            $this->methodNotAllowedResponse();
        }

        if($valid) {
            $connection = new mysqli($dbserver, $dbusername, $dbpassword, $dbdatabase);
            if (!$connection->connect_error) {
                $statement = $connection->prepare($query);
                // Bind the parameter
                $statement->bind_param('s', $param);
                // Now execute the query
                $statement->execute();
                $result = $statement->get_result();

                while ($row = $result->fetch_assoc()) {
                    if ($queryType == "county") {
                        $this->return_array[] = new county($row["crime"], $row["amount"]);
                    } elseif ($queryType == "crime") {
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

    public function performPost($url, $parameters, $requestBody, $accept) {
        global $dbserver, $dbusername, $dbpassword, $dbdatabase;
        $county = $parameters[1];
        $crime = $parameters[2];
        $amount = $parameters[3];

        $connection = new mysqli($dbserver, $dbusername, $dbpassword, $dbdatabase);
        if (!$connection->connect_error) {
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

	public function performPut($url, $parameters, $requestBody, $accept) 
	{
		global $dbserver, $dbusername, $dbpassword, $dbdatabase;
		if($parameters[1] == "reset"){
		    $this->reset();
        }
		else{
            $county = $parameters[1];
            $crime = $parameters[2];
            $amount = $parameters[3];

            $connection = new mysqli($dbserver, $dbusername, $dbpassword, $dbdatabase);
            if (!$connection->connect_error) {
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
		global $dbserver, $dbusername, $dbpassword, $dbdatabase;
        $county = $parameters[1];
        $crime = $parameters[2];

        $connection = new mysqli($dbserver, $dbusername, $dbpassword, $dbdatabase);
        if (!$connection->connect_error) {
            $query = "DELETE FROM Record " .
                "WHERE CountyID IN (SELECT CountyID FROM County WHERE CountyName = ?) " .
                "AND CrimeID IN (SELECT CrimeID FROM Crime WHERE CrimeName = ?)";
            $statement = $connection->prepare($query);
            // Bind the parameter
            $statement->bind_param('ss', $county, $crime);
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

    public function reset(){
        global $dbserver, $dbusername, $dbpassword, $dbdatabase;

        $connection = new mysqli($dbserver, $dbusername, $dbpassword, $dbdatabase);
        if (!$connection->connect_error) {
            $query = "DELETE FROM Record; " . file_get_contents("insert.sql");
            $statement = $connection->multi_query($query);
            if(!$statement){
                echo $connection->error;
            }

            $connection->close();

            header('Content-Type: application/json; charset=utf-8');
            header('no-cache,no-store');

            echo json_encode("success");
        }
    }
}
