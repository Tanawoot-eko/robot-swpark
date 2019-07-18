*** Settings ***
Library  SeleniumLibrary

*** Variable ***
${URL}    http://automationpractice.com
${BROWSER}    gc

*** Keywords ***
Open home page
    Open Browser    ${URL}    ${BROWSER}

Go to summer dress
    Mouse over    //ul[contains(@class, "menu-content")]/li[2]/a[@title="Dresses"]
    Wait until element is visible    //ul[contains(@class, "menu-content")]/li[2]/ul[contains(@class, "submenu")]//a[@title="Summer Dresses"]
    Click element    //ul[contains(@class, "menu-content")]/li[2]/ul[contains(@class, "submenu")]//a[@title="Summer Dresses"]