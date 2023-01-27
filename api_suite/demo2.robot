*** Settings ***
Library  RequestsLibrary

Suite Setup  Create Session    alias=pet shop    url=https://petstore.swagger.io/v2

*** Test Cases ***
TC1 Get pet

    #Create Session    alias=pet shop    url=https://petstore.swagger.io/v2
    ${response}  GET On Session    alias=pet shop    url=pet/101
    Status Should Be    200

TC2
    #Create Session    alias=pet shop    url=https://petstore.swagger.io/v2
    ${response}  GET On Session    alias=pet shop    url=pet/102   expected_status=404
    Status Should Be    404
    ${response_body}  Convert To String    ${response.json()}
    Should Contain    ${response_body}    Pet not found

TC3 
    ${response}  GET On Session    alias=pet shop    url=pet/findByStatus?status=sold
    Status Should Be    200
    Log    ${response.json()}
    Log    ${response.json()}[0][id]