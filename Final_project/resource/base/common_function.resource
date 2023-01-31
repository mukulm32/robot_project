*** Settings ***
Documentation   This resource file contains browser configuration and reuseable scripts

Library  SeleniumLibrary

*** Variables ***
${BROWSER_NAME}  chrome
${url}  https://www.opencart.com/


*** Keywords ***
Launch Browser and Navigate to URL

    Open Browser   browser=${BROWSER_NAME}
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=${url}