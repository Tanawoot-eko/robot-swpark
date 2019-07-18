*** Settings ***
Resource                  pages/homepage.robot
Resource                  pages/catalog.robot

*** Test Case ***

Sorting by price
    [Tags]  done  sprint1
    Open home page
    Go to summer dress
    Sortiing by price from highest to lowest
    App should display from highest to lowest price    

Sorting by price 2
    [Tags]  progress sprint2
    Open home page
    Go to summer dress
    Sortiing by price from highest to lowest
    App should display from highest to lowest price    

Sorting by price 3
    [Tags]  progress sprint3
    Open home page
    Go to summer dress
    Sortiing by price from highest to lowest
    App should display from highest to lowest price   

*** Keywords ***
Open home page
    homepage.Open home page

Go to summer dress
    homepage.Go to summer dress

Sortiing by price from highest to lowest
    catalog.Sorting by highest price

App should display from highest to lowest price
    catalog.Show loading icon
    



