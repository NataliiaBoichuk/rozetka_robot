*** Settings ***
Library  SeleniumLibrary
Resource  main.resource

*** Variables ***
${filter_block}     css:aside.sidebar
${names_products}  css:span.goods-tile__title
${product}      css:div.goods-tile__inner
${available_product}    css:div.goods-tile__availability

*** Keywords ***
URL Should contain keyword
    [Arguments]  ${keyword}
    Location Should Contain     ${keyword}

Filter present
    Wait Until Element Is Visible   ${filter_block}

Product name should contain search keyword
    [Arguments]  ${keyword}
    Wait until element is visible   ${names_products}
    @{products_names}=     Get WebElements    ${names_products}
    FOR     ${name_product}     IN      @{products_names}
        Element Should Contain   ${name_product}     ${keyword}     ignore_case=True
    END

Product should be available
    Filter present
    @{products}=     Get WebElements    ${product}
    @{available_products}=      Get WebElements     ${available_product}
    ${l_products}=  Get Length     ${products}
    ${l_available}=     Get Length      ${available_products}
    Should Be Equal As Integers     ${l_products}   ${l_available}