*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${sidebar_notebooks}    xpath://sidebar-fat-menu//a[contains(@href, 'computers-notebooks')]
${notebooks}        css:a[title="Ноутбуки"][class*=tile-cats__heading]
${computers}        css:a[title=Компьютеры][class*=tile-cats__heading]
${monitors}         css:a[title="Мониторы"][class*=tile-cats__heading]
${gaming}           css:a[title="Gaming"][class*=tile-cats__heading]
${hard}             css:a[title*="Компьютерные комплектующие"][class*=tile-cats__heading]
${network}          css:a[title="Сетевое оборудование"][class*=tile-cats__heading]
${tablets}          css:a[title="Планшеты"][class*=tile-cats__heading]
${accessories}      css:a[title="Аксессуары для электроники"][class*=tile-cats__heading]
${microphones}      css:a[title="Микрофоны"][class*=tile-cats__heading]
${office}           css:a[title="Оргтехника"][class*=tile-cats__heading]
${soft}             css:a[title="Программное обеспечение"][class*=tile-cats__heading]
${server}           css:a[title="Серверное оборудование"][class*=tile-cats__heading]
${earphones}        css:a[title="Наушники и аксессуары"][class*=tile-cats__heading]
${cables}           css:a[title="Кабели и переходники"][class*=tile-cats__heading]
${grafic-tablets}   css:a[title="Графические планшеты"][class*=tile-cats__heading]
${speakers}         css:a[title="Акустические системы"][class*=tile-cats__heading]
${keyboards_mice}   css:a[title="Клавиатуры и мыши"][class*=tile-cats__heading]
${interactive}      css:a[title="Интерактивное оборудование"][class*=tile-cats__heading]
${apple}   xpath://*[@id="Apple"]/following-sibling::label
${available}    xpath://*[@id="Есть в наличии"]/following-sibling::label


*** Keywords ***
Navigate to category computers-notebooks
    Wait Until Element Is Visible   ${sidebar_notebooks}
    Click Link   ${sidebar_notebooks}

Navigate to notebooks
    Wait Until Element Is Visible   ${notebooks}
    Click Link    ${notebooks}

Select Apple brand
    Scroll Element Into View   ${apple}
    Click Element     ${apple}

Select present product
    Scroll Element Into View   ${available}
    Click Element     ${available}

