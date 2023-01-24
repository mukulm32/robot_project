*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
#assignment of citi bank
TC1 citi bank registration
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To  https://www.online.citibank.co.in
    Run Keyword And Expect Error   Click Element    xpath=//a[@title='Close']

    Click Element    xpath=//span[text()='Login']
    Switch Window    New
    Click Element    xpath=//div[@class='fl cup pt3']
    Click Element    xpath=//a[@class='sbSelector']
    Click Element    link=Credit Card
    Input Text    name=citiCard1    4545
    Input Text    name=citiCard2    5656
    Input Text    name=citiCard3    8887
    Input Text    name=citiCard4    9998
    Input Password   name=CCVNO    123
    Click Element    id=bill-date-long
    Select From List By Label    xpath=//select[@class='ui-datepicker-year']    2022
    Select From List By Label   xpath=//select[@class='ui-datepicker-month']    Apr
    Click Element         link=14
    Click Element    xpath=//input[@class='ctaBlue minWidth']
    Element Should Contain    xpath=//li[contains(text(),'Please accept Terms and Conditions')]     Please accept Terms and Conditions
    Click Element    xpath=//div[@class='ui-dialog-buttonset']
    Switch Window   Main
    Sleep    5s
    Close Browser

