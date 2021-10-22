*** Settings ***
Library  SeleniumLibrary
Suite Setup  Run Keywords
...          Open browser on home page  AND
...          Navigate to category computers-notebooks
Suite Teardown  Close browser
Resource  main.resource
Resource  product-page.resource
Resource  order.resource
Resource  notebooks_and_computers.resource

*** Test Cases ***
Add product
    Home page should be open
    Open the promotional product page
    Product page should be open
    Add product to cart
    Should open modal window
    Place an order
    Page checkout should be open
