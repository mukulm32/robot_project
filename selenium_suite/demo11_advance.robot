*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
#Upload in file
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    15s
    Go To    url=https://www.ilovepdf.com/pdf_to_word
    Choose File    xpath=//input[@type='file']     C:/samplepdf/sample_pdf.pdf

TC2
#CSS operator
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    15s
    Go To    url=https://www.facebook.com/
    Input Text    css=#email    john
    Input Password    css=#pass    12345
    Click Element    css=button[name='login']

    
