*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
#assignment open emr dp reg and validate the msg
TC1

    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://demo.openemr.io/b/openemr/interface/login/login.php?site=default
    
    Input Text    id=authUser   admin
    
    Input Password    id=clearPass    pass

    Click Element    xpath=//select[@name='languageChoice']

    Select From List By Label    name=languageChoice  English (Indian)

    Click Element    id=login-button
    
    Click Element    xpath=//div[@role='button']
    
    Click Element    xpath=//div[text()='New/Search']
    
    
    Select Frame  xpath=//iframe[@name='pat']


    Input Text   id=form_fname   Jerry
    Input Text    id=form_mname    mm
    Input Text    id=form_lname    mac
    
    Click Element    id=form_DOB
    Input Text    id=form_DOB    24/01/2023

    Click Element    id=form_sex 
    Click Element    xpath=//option[text()='Male']
    
    Click Element    id=create


    Unselect Frame

    
    Select Frame    xpath=//iframe[@id='modalframe']


    Click Element    xpath=//input[@value='Confirm Create New Patient']

     ${alert_text}   Handle Alert    action=ACCEPT  timeout=20s
     Log To Console    ${alert_text}

     Click Element    class=closeDlgIframe

     Unselect Frame
     
     Select Frame    xpath=//iframe[@name='pat']
     Element Should Contain    xpath=//h2[contains(text(),"Medical Record Dashboard")]    Medical Record Dashboard - Jerry mm mac

     Sleep    5s
     [Teardown]   Close Window
