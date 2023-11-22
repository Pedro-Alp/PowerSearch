# PowerSearch Module

PowerSearch is a PowerShell module that allows you to perform web searches directly from the command line by opening your default browser with the search results. 
Search in Google, YouTube, Bing, DuckDuckGo, StackOverflow, and GitHub.

## Functions

### `PowerSearch`
Performs a web search based on the specified engine and search query.

```powershell
PowerSearch -engine <EngineName> -searchQuery <SearchQuery>
```
### Aliases
Short functions are provided for each search engine that can be used in the terminal:
    
    · google : Google search
    · youtube : YouTube search
    · bing : Bing search
    · duckduckgo : DuckDuckGo search
    · stackoverflow : StackOverflow search
    · github : GitHub search

Example:
```powershell
google "FizzBuzz"
```

## Installation

### PowerShell Gallery
```powershell
Install-Module -Name PowerSearch -Force
```

### Usage
Once the module is installed, you can use the provided functions and aliases in your PowerShell session. For example:
```powershell 
# Perform a Google search
google "JavaScript frameworks comparison"

# Perform a YouTube search
youtube "Python web development tutorial"

# Perform a Bing search
bing "Java vs C# performance comparison"

# Perform a DuckDuckGo search
duckduckgo "Python programming best practices"

# Perform a Stack Overflow search
stackoverflow "C++ memory management best practices"

# Perform a GitHub search
github "Python machine learning libraries"
```
