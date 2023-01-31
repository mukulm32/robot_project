*** Settings ***
Documentation  This file contains test case related to invalid login


Resource    ../resource/base/common_function.resource

Library  DataDriver   file=../testdata/opencart_automation.xlsx   sheet_name=valid_registation

Test Setup   Launch Browser and Navigate to URL

Test Teardown   Close Browser

Test Template   Valid Register Template


Library  SeleniumLibrary

*** Test Cases ***

Valid_Register


*** Keywords ***
Valid Register Template
    [Arguments]  ${mail_id}  ${password}  ${pin}  ${expected}

    Click Element    link=Login
    Input Text    id=input-email    ${mail_id}
    Input Password    id=input-password    ${password}
    Click Element    xpath=//button[text()='Login']
    Input Password    id=input-pin    ${pin}
    Click Element    xpath=//button[text()='Continue']
    Click Element    xpath=//span[@class='caret']
    Click Element    xpath=//a[text()='OpenCart Books']
    Scroll Element Into View    xpath=//a[text()='OpenCart 1.4 Template Design Cookbook']
    Click Element    xpath=//a[text()='OpenCart 1.4 Template Design Cookbook']

    Switch Window   Amazon.com: OpenCart 1.4 Template Design Cookbook: 9781849514309: Hasan, Tahsin: Books
    Mouse Over    xpath=//span[text()='Account & Lists']
    Click Element    xpath=//span[text()='Kindle Unlimited']
    Sleep    2s

    Switch Window   MAIN
    Click Element    xpath=//a[text()='Marketplace']
    Click Element    id=input-sort
    Click Element   xpath=//option[text()='Rating']
    Element Should Contain    xpath=//*[contains(text(),'Category')]    ${expected}
    Sleep    2s

