*** Settings ***
Library    RequestsLibrary


*** Test Case ***
Call list of users from jsonplaceholder
    Create Session    api    https://jsonplaceholder.typicode.com
    ${response}=    Get Request    api    /users
    Should Be Equal    ${200}    ${response.status_code}
    ${length}=    Get Length    ${response.json()}
    Log To Console    ${length}
    Log To Console    ${response.json()[0]["username"]}
    Should Be Equal    ${10}    ${length}
    Should Be Equal    Bret    ${response.json()[0]["username"]}