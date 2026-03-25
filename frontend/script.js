document.getElementById("searchForm").addEventListener("submit", function(event) {

    event.preventDefault();

    const course = document.getElementById("course").value;
    const region = document.getElementById("region").value;
    const intake = document.getElementById("intake").value;

    const resultsDiv = document.getElementById("results");

    resultsDiv.innerHTML = `
        <h2>Search Results</h2>
        <p>Course: ${course}</p>
        <p>Region: ${region}</p>
        <p>Intake: ${intake}</p>
        <p>(Backend search will appear here)</p>
    `;

});