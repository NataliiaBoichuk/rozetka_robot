*** Settings ***
Suite Setup  Run Keywords   Open browser on home page   Navigate to login
Suite Teardown  Close Browser
Resource  main.resource

*** Test Cases ***
Username    Username Field Should Be Visible
Password    Password Field Should Be Visible
Submit  Submit Button Should Be Visible
Register    Should Be Possible To Register

*** Keywords ***
Username Field Should Be Visible
    Element Should be Visible   ${username}

Password Field Should Be Visible
    Element Should be Visible   ${pass}

Submit Button Should Be Visible
    Element Should be Visible   ${submit_btn}

Should Be Possible To Register
    Element Should be Visible   ${reg_btn}
