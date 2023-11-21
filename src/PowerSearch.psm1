function powersearch {
    # Defines the parameters for the search engine and search query
    param (
        [string]$engine,
        [string]$searchQuery
    )

    # Checks if an engine and search query are provided
    if (-not $engine -or -not $searchQuery) {
        # Displays a message asking to provide both engine and search query
        Write-Host "Please provide both a search engine and a search query."
        # Exits the script if any parameter is missing
        exit
    }

    # Constructs the search URL based on the specified engine and search query
    $searchUrl = switch ($engine) {
        "google"        { "https://www.google.com/search?q=$searchQuery" }
        "youtube"       { "https://www.youtube.com/results?search_query=$searchQuery" }
        "bing"          { "https://www.bing.com/search?q=$searchQuery" }
        "duckduckgo"    { "https://duckduckgo.com/?q=$searchQuery" }
        "stackoverflow" { "https://stackoverflow.com/search?q=$searchQuery" }
        "github"        { "https://github.com/search?q=$searchQuery" }
        default         { Write-Host "Unsupported search engine: $engine"; exit }
    }

    # Opens the URL in the default web browser
    Start-Process $searchUrl
}

# Defines short functions for each search engine that can be used in the terminal (e.g. google "search query")
function google        { powersearch -engine google        -searchQuery $args[0] }
function youtube       { powersearch -engine youtube       -searchQuery $args[0] }
function bing          { powersearch -engine bing          -searchQuery $args[0] }
function duckduckgo    { powersearch -engine duckduckgo    -searchQuery $args[0] }
function stackoverflow { powersearch -engine stackoverflow -searchQuery $args[0] }
function github        { powersearch -engine github        -searchQuery $args[0] }