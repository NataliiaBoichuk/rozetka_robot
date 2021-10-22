*** Settings ***
Library  SeleniumLibrary
Suite Setup  Run Keywords
...          Open browser on home page  AND
...          Navigate to category computers-notebooks
Suite Teardown  Close Browser
Test Template   Subcategory Visible
Resource    notebooks_and_computers.resource
Resource    main.resource

*** Test Cases ***
Notebooks   ${notebooks}
Computers   ${computers}
Monitors    ${monitors}
Gaming      ${gaming}
Hard        ${hard}
Network     ${network}
Tablets     ${tablets}
Accessories  ${accessories}
Microphones     ${microphones}
Office      ${office}
Software    ${soft}
Server      ${server}
Earphones   ${earphones}
Cables      ${cables}
G_tablets   ${grafic-tablets}
Speakers    ${speakers}
K-boards    ${keyboards_mice}
Interactive     ${interactive}


*** Keywords ***
Subcategory Visible
    [Arguments]  ${locator}
    Wait Until Page Contains     Компьютеры и ноутбуки
    Element Should be Visible   ${locator}