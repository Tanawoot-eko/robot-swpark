*** Settings ***
Resource                  pages/homepage.robot
Resource                  pages/catalog.robot

Suite Setup       Open home page
Suite Teardown    Close Browser
Test Teardown     Back to homepage

*** Test Case ***

Sorting by price
    [Tags]  done  sprint1
    Go to summer dress
    Sortiing by price from highest to lowest
    App should display from highest to lowest price    

Sorting by price 2
    [Tags]  progress
    Go to summer dress
    Sortiing by price from highest to lowest
    App should display from highest to lowest price    

Sorting by price 3
    [Tags]  progress
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

Back to homepage
    homepage.Back to homepage    



