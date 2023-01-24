*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
  Open Browser  url=https://www.google.co.in/  browser=chrome
  ${actual_title}  Get Title
  Log To Console    ${actual_title}
  Log    ${actual_title}
  Should Be Equal    ${actual_title}    Google

TC2
    Open Browser  url=https://www.google.co.in/  browser=chrome
    Title Should Be    Google

TC3
#assignment
    Open Browser  url=https://www.facebook.com/  browser=chrome
    Input Text    locator=id:email    text=hello@gmail.com
    Input Password    id=pass    123456


TC4
Open Browser  url=https://www.facebook.com/  browser=chrome
    Input Text    locator=id:email    text=hello@gmail.com
    Input Password    id=pass    123456
    #click on login
    Click Element    name:login

TC5
    Open Browser  url=https://www.db4free.net/phpMyAdmin/  browser=Chrome
    Input Text  input_username  mukul@gmail.com
    Input Password  input_password     12345678
    Click Element   input_go
    
TC6
#trial try and error  creating list in

    Open Browser  browser=chrome
    @{output}  Run Keyword And Ignore Error    Click Element    xpath=//a
    Log To Console    ${output}    
    Log To Console    ${output}[0]
    Log To Console    ${output}[1]
    Log   ${output}