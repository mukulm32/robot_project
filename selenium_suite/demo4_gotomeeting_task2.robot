*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
#assignment creating gomeeting
TC1 go meeting registration
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://www.goto.com/meeting/
    Click Element    id=truste-consent-button
    Click Element    link=Try Free
    Input Text    id=first-name    john
    Input Text    id=last-name    wick
    Input Text    id=login__email    john@gmail.com
    Select From List By Label    id=CompanySize   10 - 99
    Click Element    xpath=//button[text()='Start My Trial']