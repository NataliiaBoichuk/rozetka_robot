*** Settings ***
Library  SeleniumLibrary
Suite Setup  Run Keywords
...          Open browser on home page  AND
...          Navigate to category computers-notebooks   AND
...          Navigate to notebooks
Suite Teardown  Close Browser
Resource    notebooks_and_computers.resource
Resource    main.resource
Resource    search.resource

*** Test Cases ***
Check categories
    Product name should contain search keyword  ноутбук
Check filter Apple
    Apple product
Check filter available
    Available product

*** Keywords ***
Apple product
    Select Apple brand
    Product name should contain search keyword  Apple

Available product
    Select present product
    Product should be available