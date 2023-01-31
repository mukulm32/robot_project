*** Settings ***
Documentation  This file contains test case related to invalid login


Resource    ../resource/base/common_function.resource

Library  DataDriver   file=../testdata/opencart_automation.xlsx   sheet_name=valid login

Test Setup   Launch Browser and Navigate to URL

Test Teardown   Close Browser

Test Template   Valaid login template

Library  SeleniumLibrary


*** Test Cases ***

Valid login



*** Keywords ***
Valaid login template

    [Arguments]  ${mail_id}  ${password}  ${pin}  ${expected}
    Click Element    link=Login
    Input Text    id=input-email    ${mail_id}
    Input Password    id=input-password    ${password}
    Click Element    xpath=//button[text()='Login']
    Input Password    id=input-pin    ${pin}
    Click Element    xpath=//button[text()='Continue']
    Element Should Contain      xpath=//a[contains(text(),'Account Details')]  ${expected}

    Sleep    5s


