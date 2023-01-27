*** Settings ***
Library  RequestsLibrary

*** Test Cases ***
TC1 
    Create Session    alias=pet shop    url=https://petstore.swagger.io/v2
    ${response}  GET On Session    alias=pet shop    url=pet/101
    Log    ${response}
    Log    ${response.json()}
    Log    ${response.json}[id]

    ${expected_id}     Convert To Integer    101
    Should Be Equal   ${response.json}[id]  101

    ${actual_id}     Convert To String    ${response.json()}[id]
    Should Be Equal    ${actual_id}    101

    Log    ${response.json()}[name]
    Should Be Equal    ${response.json}[name]   doggie







    Status Should Be    200


