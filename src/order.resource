*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${checkout}     css:h1.checkout-heading
${surname}      css:div.js-surname input
${name}     css:div.js-name input
${phone}    css:div.js-phone input
${order_submit}     css:input[type=submit]
${error_name}       css:div.js-name p.validation-message
${error_surname}    css:div.js-surname p.validation-message
${error_phone}      css:div.js-phone p.validation-message
${user_name}    Таня
${user_surname}     Бувє
${user_phone}   0671234567

*** Keywords ***
Page checkout should be open
    Wait Until Element is Visible   ${checkout}     timeout=2

Input surname
    [Arguments]  ${user_surname}
    Wait Until Element is Visible   ${surname}
    Input text      ${surname}  ${user_surname}

Input name
    [Arguments]  ${user_name}
    Wait Until Element is Visible   ${name}
    Input text      ${name}     ${user_name}

Input phone
    [Arguments]  ${user_phone}
    Wait Until Element is Visible   ${phone}
    Input text      ${phone}    ${user_phone}

Error surname
    Element should be visible   ${error_surname}

Error name
    Element should be visible   ${error_name}

Error phone
    Element should be visible   ${error_phone}
