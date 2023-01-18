*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1 Sales force registration
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://www.db4free.net/
    Click Element    link=phpMyAdmin »
    Switch Window   phpMyAdmin
    Input Text    id=input_username    test1
    Input Text    id=input_password    1234
    Click Element    id=input_go
    Close Window
