*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
#usinf alert handel
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
    Click Element    xpath=//img[@alt='Go']
    ${alert_text}   Handle Alert    action=ACCEPT   #this can executed for only in java script alert
    Log To Console    ${alert_text}
    Should Be Equal    ${alert_text}    Customer ID${SPACE}${SPACE}cannot be left blank.