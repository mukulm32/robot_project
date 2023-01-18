*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1 Register
    Open Browser    https://www.facebook.com    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element   link=Create New Account
    Input Text   name=firstname   Mukul
    Input Text   name=lastname   Mangde
    Input Text    name=reg_email__  mukul@gmail.com
    Input Password    name=reg_passwd__    123456789
    #dropdown button (for dob-20 feb 2000)
    #Select From List By Label    id=day  20
    Select From List By Label   xpath=//select[@title='Day']  20
    Select From List By Label    id=month  Feb
    #Select From List By Index    id=month  1
    Select From List By Label    id=year  2000
    Click Element    xpath=//input[@value='-1']
    Click Element    name=websubmit
    
