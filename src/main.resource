*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  Chrome
${url}  https://rozetka.com.ua/
${logo}     css:img[alt="Rozetka Logo"]
${promotional_product}  css:goods-sections > *:first-child ul > *:first-child a.tile__title
${login_btn}    css:rz-user > button
${catalog_btn}  id:fat-menu
${account_btn}  a[href*="cabinet"][class*="header__button"]
${username}     id:auth_email
${pass}         id:auth_pass
${submit_btn}   css:button.auth-modal__submit
${reg_btn}     css:button.auth-modal__register-link
${search}       css:input[name=search]
${find}         css:button.search-form__submit
@{words}    ноутбук     мышь     планшет     память

*** Keywords ***
Open browser on home page
    open browser    ${url}  ${browser}
    Maximize Browser Window

Click Catalog drop-down list
    click button    ${catalog_btn}

Navigate to login
    click button    ${login_btn}

Navigate to account
    click button    ${account_btn}

Search for keyword
    ${keyword}=    Evaluate   random.choice($words)     random
    Set Global Variable     ${keyword}
    Input Text      ${search}   ${keyword}
    click button    ${find}

Home page should be open
    Click Element   ${logo}
    Location Should Be  ${url}

Open the promotional product page
    Click link      ${promotional_product}
