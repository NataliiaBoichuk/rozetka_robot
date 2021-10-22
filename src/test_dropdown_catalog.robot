*** Settings ***
Suite Setup  Open browser on home page
Suite Teardown  Close Browser
Resource  main.resource


*** Variables ***
@{sections}    computers-notebooks  telefony-tv  game    bt     tovary-dlya-doma   instrumenty  remont  dacha    sport
...            clothes   krasota    kids    school-books  napitki-i-produkty    biznesa     servisi  travel
...            promotions


*** Test Cases ***
Check Catalog
    [Arguments]  @{sections}
    FOR     ${section}  IN   @{sections}
        Element Should be visible   css:a[href*=${section}][class="menu-categories__link"]
    END

