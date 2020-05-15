// Global variables
let chart = null;
let crimes = null;
let currentCounty = null;
// Used to format numbers
const formatter = new Intl.NumberFormat('en');

// Colours used in charts
let colours = ['#ff0000', '#ff4000', '#ff8000', '#ffbf00', '#ffff00', '#80ff00', '#00ff00', '#00ff80', '#00ffbf', '#00bfff', '#0080ff', '#0000ff', '#4000ff', '#8000ff', '#bf00ff', '#ff00ff', '#ff0080', '#ff0040',];

// Gets all crime names from the database
function getAllCrimes()
{
    $.ajax({
        url: '/query/crime',
        type: 'GET',
        cache: false,
        dataType: 'json',
        success: function (data)
        {
            updateColours(data.length);
        },
        error: function (jqXHR, textStatus, errorThrown)
        {
            alert(jqXHR + '\n' + textStatus + '\n' + errorThrown);
        }
    });
}

// If there are more crimes than there are colours then add random colours, without this any extra crimes wil be drawn in grey
function updateColours(amountOfCrimes)
{
    if(amountOfCrimes > colours.length)
    {
        let coloursToAdd = amountOfCrimes - colours.length;
        for(let i = 0; i < coloursToAdd; i++)
        {
            let r = Math.floor(Math.random() * 256);
            let g = Math.floor(Math.random() * 256);
            let b = Math.floor(Math.random() * 256);
            colours.push("rgb(" + r + "," + g + "," + b + ")");
        }
    }
}

// Gets total crime in each county
function getTotals()
{
    $.ajax({
        url: '/query/county/totals',
        type: 'GET',
        cache: false,
        dataType: 'json',
        success: function (data)
        {
            addTotalsToLinks(data);
        },
        error: function (jqXHR, textStatus, errorThrown)
        {
            alert(jqXHR + '\n' + textStatus + '\n' + errorThrown);
        }
    });
}

// Displays total crime to links on map, if no data available then the link has no function and is coloured red
function addTotalsToLinks(totals)
{
    // For links with data available, add functionality and text
    $.each(totals, function (index, total)
    {
        let countyName = total.County;
        let totalCrime = total.Amount;
        let link = document.getElementById(countyName);
        link.setAttribute("xlink:title", countyName + ", Total crime: " + formatter.format(totalCrime));
        link.setAttribute("onclick", "getCrimeByCounty(\"" + countyName + "\")");
    });

    // Checks for links with no data available
    let links = document.getElementsByClassName("link");
    $.each(links, function (index, link)
    {
        if(link.getAttribute("onclick") === "")
        {
            link.setAttribute("xlink:title", link.getAttribute("id") + ": No data available");
            let children = link.children;
            $.each(children, function (index, child)
            {
                child.setAttribute("class", "nodata");
            });
        }
    });
    getAllCrimes();
}

// Uses ajax to query the database through the REST service
function getCrimeByCounty(county)
{
    currentCounty = county;
    $.ajax({
        url: '/query/county/' + currentCounty,
        type: 'GET',
        cache: false,
        dataType: 'json',
        success: function (data)
        {
            crimes = data;
            addButtons();
        },
        error: function (jqXHR, textStatus, errorThrown)
        {
            alert(jqXHR + '\n' + textStatus + '\n' + errorThrown);
        }
    });
}

// Adds buttons to the screen that generate charts
function addButtons(){
    // Clear header text
    document.getElementById('crimes-header').innerHTML = '';
    // If chart already exists, destroy it to make way for new one
    if(chart != null)
    {
        chart.destroy();
    }

    // Add row of buttons to select chart type
    document.getElementById('chart-buttons-header').innerHTML = '<h2 class="subheading">Select chart type:</h2>';
    document.getElementById('chart-buttons').innerHTML = '<button class="first" onclick="createChart(\'pie\')">Pie</button>&nbsp;' +
        '<button class="second" onclick="createChart(\'doughnut\')">Doughnut</button>&nbsp;' +
        '<button class="third" onclick="createChart(\'bar\')">Bar</button>&nbsp;' +
        '<button class="fourth" onclick="createChart(\'radar\')">Radar</button>&nbsp;' +
        '<button class="fifth" onclick="createChart(\'polarArea\')">Polar</button>';
    // Scroll down to buttons
    document.getElementById('chart-buttons-header').scrollIntoView(true);
}

// Makes the chart
function createChart(chartType)
{
    // Add header
    document.getElementById('crimes-header').innerHTML = '<h2 class="subheading">Crime statistics for ' + currentCounty + ' in 2018</h2>';
    // Scroll down to chart
    document.getElementById('crimes-header').scrollIntoView(true);

    // Add crime names and amounts to arrays for use by chart.js
    let labellist = [];
    let datalist = [];
    $.each(crimes, function (index, crime)
    {
        labellist.push(crime.Crime);
        datalist.push(crime.Amount);
    });

    // Destroy old chart if there is one
    let chartElement = document.getElementById('chart');
    if(chart != null)
    {
        chart.destroy();
    }

    // Set font
    Chart.defaults.global.defaultFontFamily = 'Trebuchet MS';
    // Remove dataset headers on radar and bar charts as we only have one dataset
    Chart.defaults.global.legend.display = !(chartType === 'bar' || chartType === 'radar');

    // Create the chart itself
    chart = new Chart(chartElement, {
        type: chartType,
        data: {
            labels: labellist,
            datasets: [{
                borderWidth: 1,
                backgroundColor: colours,
                data: datalist,
            fill: false
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false
        }
    });
}