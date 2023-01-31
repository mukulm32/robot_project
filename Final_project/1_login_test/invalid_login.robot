*** Settings ***

Documentation  This file contains test case related to invalid login


Resource    resource/base/common_function.resource

Library  DataDriver   file=../testdata/opencart_automation.xlsx   sheet_name=invalid login

Test Setup   Launch Browser and Navigate to URL

Test Teardown   Close Browser

Test Template   Invalid login template

Library  SeleniumLibrary


*** Test Cases ***

Invalid login


*** Keywords ***
Invalid login template


    [Arguments]  ${mail_d}  ${password}  ${expected_value}
    Click Element    link=Login
    Input Text    id=input-email    ${mail_d}
    Input Password    id=input-password    ${password}
    Click Element    xpath=//button[text()='Login']
    Element Should Contain      xpath=//div[contains(text(),'No match for E-Mail and/or Password.')]    ${expected_value}







