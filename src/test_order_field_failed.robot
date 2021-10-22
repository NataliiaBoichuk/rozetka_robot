*** Settings ***
Library  SeleniumLibrary
Suite Setup  Run keywords
...          Open browser on home page  AND
...          Open the promotional product page  AND
...          Add product to cart  AND
...          Place an order
Suite Teardown  Close browser
Resource  main.resource
Resource  product-page.resource
Resource  order.resource

*** Test Cases ***
Fail surname
    Input surname   a
    Error surname
Fail name
    Input name  a
    Error name
Fail phone
    Input phone     123456789
    Error phone
