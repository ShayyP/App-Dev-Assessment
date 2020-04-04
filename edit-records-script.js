let counties = null;
let crimes = null;

// Uses ajax to query the database through the REST service
function getCounties(){
    $.ajax({
        url: '/query/county',
        type: 'GET',
        cache: false,
        dataType: 'json',
        success: function (data) {
            counties = data.sort();
            getCrimes();
        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert(jqXHR + '\n' + textStatus + '\n' + errorThrown);
        }
    });
}

function getCrimes(){
    $.ajax({
        url: '/query/crime',
        type: 'GET',
        cache: false,
        dataType: 'json',
        success: function (data) {
            crimes = data.sort();
            fillForm();
        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert(jqXHR + '\n' + textStatus + '\n' + errorThrown);
        }
    });
}

function fillForm(){
    let selector = document.getElementById('counties');
    let outStr = "<option value=\"\" selected disabled hidden>Select</option>";
    $.each(counties, function (index, county) {
        outStr += "<option value='" + county + "'>" + county + "</option>";
    });
    selector.innerHTML = outStr;

    selector = document.getElementById('crimes');
    outStr = "<option value=\"\" selected disabled hidden>Select</option>";
    $.each(crimes, function (index, crime) {
        outStr += "<option value='" + crime + "'>" + crime + "</option>";
    });
    selector.innerHTML = outStr;
}

function add() {
    let county = $("#counties :selected").val();
    let crime = $("#crimes :selected").val();
    let amount = $("#amount").val();
    let output = document.getElementById('affected-rows');

    $.ajax({
        url: '/query/' + county + '/' + crime + '/' + amount,
        type: 'POST',
        cache: false,
        dataType: 'json',
        success: function (data) {
            if(data === 0){
                output.innerHTML = "Record already exists";
            }
            else{
                output.innerHTML = "Record created successfully";
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            output.innerHTML = "All fields must be specified";
        }
    });
}

function update(){
    let county = $("#counties :selected").val();
    let crime = $("#crimes :selected").val();
    let amount = $("#amount").val();
    let output = document.getElementById('affected-rows');

    $.ajax({
        url: '/query/' + county + '/' + crime + '/' + amount,
        type: 'PUT',
        cache: false,
        dataType: 'json',
        success: function (data) {
            if(data === 0){
                output.innerHTML = "Record is unchanged";
            }
            else{
                output.innerHTML = "Record updated successfully";
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            output.innerHTML = "Record not found";
        }
    });
}

function remove(){
    let county = $("#counties :selected").val();
    let crime = $("#crimes :selected").val();
    let output = document.getElementById('affected-rows');

    $.ajax({
        url: '/query/' + county + '/' + crime,
        type: 'DELETE',
        cache: false,
        dataType: 'json',
        success: function (data) {
            if(data === 0){
                output.innerHTML = "Record not found";
            }
            else{
                output.innerHTML = "Record deleted successfully";
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            output.innerHTML = "Record not found";
        }
    });
}

function reset(){
    let output = document.getElementById('affected-rows');

    $.ajax({
        url: '/query/reset',
        type: 'PUT',
        cache: false,
        dataType: 'json',
        success: function (data) {
            if(data === "success"){
                output.innerHTML = "Records reset successfully";
            }
            else{
                output.innerHTML = "An error occurred";
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert(jqXHR + '\n' + textStatus + '\n' + errorThrown);
            output.innerHTML = "An error occurred";
        }
    });
}