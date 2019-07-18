*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Sorting by highest price
    Click element    selectProductSort
    Select from list by value    selectProductSort    price:desc

Show loading icon
    Page should contain    Loading...
