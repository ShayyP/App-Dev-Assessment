let counties = null;
let crimes = null;
let recordExists = false;

// Gets all county names from the database
function getCounties()
{
    $.ajax({
        url: '/query/county',
        type: 'GET',
        cache: false,
        dataType: 'json',
        success: function (data)
        {
            // .sort() puts counties in alphabetical order
            counties = data.sort();
            getCrimes();
        },
        error: function (jqXHR, textStatus, errorThrown)
        {
            alert(jqXHR + '\n' + textStatus + '\n' + errorThrown);
        }
    });
}

// Gets all crime names from the database
function getCrimes()
{
    $.ajax({
        url: '/query/crime',
        type: 'GET',
        cache: false,
        dataType: 'json',
        success: function (data)
        {
            // .sort() puts crimes in alphabetical order
            crimes = data.sort();
            fillForm();
        },
        error: function (jqXHR, textStatus, errorThrown)
        {
            alert(jqXHR + '\n' + textStatus + '\n' + errorThrown);
        }
    });
}

// Fills form selectors with options taken from the database
function fillForm()
{
    let selector;
    let outStr;

    // Populates the county selector
    if(counties !== null)
    {
        selector = document.getElementById('counties');
        outStr = "<option value=\"\" selected disabled hidden>Select</option>";
        $.each(counties, function (index, county)
        {
            outStr += "<option value='" + county + "'>" + county + "</option>";
        });
        selector.innerHTML = outStr;
    }

    // Populates the crime selector
    if(crimes !== null)
    {
        selector = document.getElementById('crimes');
        outStr = "<option value=\"\" selected disabled hidden>Select</option>";
        $.each(crimes, function (index, crime)
        {
            outStr += "<option value='" + crime + "'>" + crime + "</option>";
        });
        selector.innerHTML = outStr;
    }
}

// Adds a new record to the database
function add()
{
    // Gets data from the form
    let county = $("#counties :selected").val();
    let crime = $("#crimes :selected").val();
    let amount = $("#amount").val();
    let output = document.getElementById('affected-rows');

    // Checks if both selectors have been chosen
    if(document.getElementById("counties").selectedIndex !== 0 && document.getElementById("crimes").selectedIndex !== 0)
    {
        // Checks amount is valid
        if(amount >= 0)
        {
            $.ajax({
                url: '/query/' + county + '/' + crime + '/' + amount,
                type: 'POST',
                cache: false,
                dataType: 'json',
                success: function (data)
                {
                    if(data === 0)
                    {
                        // If record exists, give user the option to update it instead
                        if(confirm("Record already exists, do you want to update the record instead?"))
                        {
                            update();
                        }
                    }
                    else
                    {
                        $("#affected-rows").fadeIn();
                        output.innerHTML = "Record created successfully";
                    }
                },
                error: function (jqXHR, textStatus, errorThrown)
                {
                    $("#affected-rows").fadeIn();
                    output.innerHTML = "An error occurred";
                }
            });
        }
        else
        {
            $("#affected-rows").fadeIn();
            output.innerHTML = "Amount cannot be negative";
        }
    }
    else
    {
        $("#affected-rows").fadeIn();
        output.innerHTML = "All fields must be specified";
    }
    setTimeout(fadeOutText, 5000);
}

// Updates amount input box value to match the record selected
function changeAmount()
{
    if(document.getElementById("counties").selectedIndex !== 0 && document.getElementById("crimes").selectedIndex !== 0)
    {
        let county = $("#counties :selected").val();
        let crime = $("#crimes :selected").val();

        $.ajax({
            url: '/query/amount/' + county + '/' + crime,
            type: 'GET',
            cache: false,
            dataType: 'json',
            success: function (data)
            {
                let amountBox = document.getElementById('amount');
                if(data !== null)
                {
                    recordExists = true;
                    amountBox.value = data;
                }
                else
                {
                    recordExists = false;
                    amountBox.value = 0;
                }
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                let output = document.getElementById('affected-rows');
                $("#affected-rows").fadeIn();
                output.innerHTML = "An error occurred";
            }
        });
    }
}

// Updates an existing record in the database with values from the form
function update()
{
    let county = $("#counties :selected").val();
    let crime = $("#crimes :selected").val();
    let amount = $("#amount").val();
    let output = document.getElementById('affected-rows');

    // Check amount is valid
    if(amount >= 0)
    {
        if(document.getElementById("counties").selectedIndex !== 0 && document.getElementById("crimes").selectedIndex !== 0)
        {
            $.ajax({
                url: '/query/' + county + '/' + crime + '/' + amount,
                type: 'PUT',
                cache: false,
                dataType: 'json',
                success: function (data)
                {
                    if (data === 0)
                    {
                        if (recordExists)
                        {
                            $("#affected-rows").fadeIn();
                            output.innerHTML = "Record is unchanged";
                        } else
                        {
                            // If the record does not exist, give the user the option to add it
                            if (confirm("Record does not exist, do you wish to add it?"))
                            {
                                add();
                            }
                        }
                    } else
                    {
                        $("#affected-rows").fadeIn();
                        output.innerHTML = "Record updated successfully";
                    }
                },
                error: function (jqXHR, textStatus, errorThrown)
                {
                    $("#affected-rows").fadeIn();
                    output.innerHTML = "An error occurred";
                }
            });
        }
        else
        {
            $("#affected-rows").fadeIn();
            output.innerHTML = "All fields must be specified";
        }
    }
    else
    {
        $("#affected-rows").fadeIn();
        output.innerHTML = "Amount cannot be negative";
    }
    setTimeout(fadeOutText, 5000);
}

// Deletes record(s) from the database
function remove()
{
    let url;
    let county = $("#counties :selected").val();
    let crime = $("#crimes :selected").val();
    let output = document.getElementById('affected-rows');

    // Checks if user wants to delete specific crime, all crimes from one county or all crimes of a set type
    if(document.getElementById("counties").selectedIndex !== 0 && document.getElementById("crimes").selectedIndex !== 0)
    {
        url = '/query/' + county + '/' + crime;
    }
    else if(document.getElementById("counties").selectedIndex !== 0)
    {
        url = '/query/' + county + '/all';
    }
    else if(document.getElementById("crimes").selectedIndex !== 0)
    {
        url = '/query/all/' + crime;
    }
    else
    {
        $("#affected-rows").fadeIn();
        output.innerHTML = "Please specify county and/or crime to delete";
        setTimeout(fadeOutText, 5000);
        return;
    }

    if(confirm("Are you sure you want to delete this record?"))
    {
        $.ajax({
            url: url,
            type: 'DELETE',
            cache: false,
            dataType: 'json',
            success: function (data)
            {
                if(data === 0)
                {
                    $("#affected-rows").fadeIn();
                    output.innerHTML = "Record not found";
                }
                else
                {
                    $("#affected-rows").fadeIn();
                    output.innerHTML = "Record deleted successfully";
                }
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                $("#affected-rows").fadeIn();
                output.innerHTML = "An error occurred";
            }
        });
        setTimeout(fadeOutText, 5000);
    }
}

// Resets all data to the original dataset
function reset(){
    if(confirm("Are you sure you want to reset all records to the original dataset?"))
    {
        let output = document.getElementById('affected-rows');
        $.ajax({
            url: '/query/reset',
            type: 'PUT',
            cache: false,
            dataType: 'json',
            success: function (data)
            {
                if(data === "success")
                {
                    $("#affected-rows").fadeIn();
                    output.innerHTML = "Records reset successfully";
                }
                else
                {
                    $("#affected-rows").fadeIn();
                    output.innerHTML = "An error occurred";
                }
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert(jqXHR + '\n' + textStatus + '\n' + errorThrown);
                $("#affected-rows").fadeIn();
                output.innerHTML = "An error occurred";
            }
        });
        setTimeout(fadeOutText, 5000);
    }
}

// Adds new crime type to the database
function addNewCrime()
{
    let crime = $("#crime").val();
    let output = document.getElementById('affected-rows');
    // Checks if name is valid
    if(crime.trim().length)
    {
        $.ajax({
            url: '/query/' + crime,
            type: 'POST',
            cache: false,
            dataType: 'json',
            success: function (data)
            {
                if(data === 0)
                {
                    $("#affected-rows").fadeIn();
                    output.innerHTML = "Crime already exists";
                }
                else
                {
                    $("#affected-rows").fadeIn();
                    output.innerHTML = "Crime successfully added";
                }
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                $("#affected-rows").fadeIn();
                output.innerHTML = "An error occurred";
            }
        });
        setTimeout(fadeOutText, 5000);
    }
    else
    {
        $("#affected-rows").fadeIn();
        output.innerHTML = "Please specify the crime name";
    }
}

// Deletes a crime and all records associated from the database
function deleteCrime()
{
    let crime = $("#crimes").val();
    let output = document.getElementById('affected-rows');
    // Checks if user has selected a crime
    if(document.getElementById("crimes").selectedIndex !== 0)
    {
        // Warns the user before executing
        if(confirm("Are you sure you want to delete this crime? This will also delete all records of this crime!"))
        {
            purgeAllRecordsOfCrime(crime);
            setTimeout(fadeOutText, 5000);
        }
    }
    else
    {
        $("#affected-rows").fadeIn();
        output.innerHTML = "Please specify the crime";
    }
}

// Deletes all records related to a certain crime
function purgeAllRecordsOfCrime(crime)
{
    let output = document.getElementById('affected-rows');
    $.ajax({
        url: '/query/all/' + crime,
        type: 'DELETE',
        cache: false,
        dataType: 'json',
        success: function (data)
        {
            deleteCrimeType(crime)
        },
        error: function (jqXHR, textStatus, errorThrown)
        {
            $("#affected-rows").fadeIn();
            output.innerHTML = "An error occurred";
        }
    });
}

// Deletes the crime type from the database
function deleteCrimeType(crime)
{
    let output = document.getElementById('affected-rows');
    $.ajax({
        url: '/query/' + crime,
        type: 'DELETE',
        cache: false,
        dataType: 'json',
        success: function (data)
        {
            $("#affected-rows").fadeIn();
            output.innerHTML = "Crime successfully deleted";
        },
        error: function (jqXHR, textStatus, errorThrown)
        {
            $("#affected-rows").fadeIn();
            output.innerHTML = "An error occurred";
        }
    });
}

// Fades text out
function fadeOutText()
{
    $("#affected-rows").fadeOut();
}