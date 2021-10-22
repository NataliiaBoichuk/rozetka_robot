*** Settings ***
Suite Setup  Open browser on home page
Suite Teardown  Close Browser
Resource  main.resource
Resource  search.resource

*** Test Cases ***
Check
    Search for keyword
    Product name should contain search keyword  ${keyword}
