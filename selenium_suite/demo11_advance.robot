*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
#Upload in file
#check element in inspect //input[@type='file']
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    15s
    Go To    url=https://www.ilovepdf.com/pdf_to_word
    Choose File    xpath=//input[@type='file']     C:/samplepdf/sample_pdf.pdf

TC2
#CSS operator#id, .classname ,tagname[attribute=''],

    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    15s
    Go To    url=https://www.facebook.com/
    Input Text    css=#email    john
    Input Password    css=#pass    12345
    Click Element    css=button[name='login']

TC3

    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    15s
    Go To    url=https://phptravels.net/
    Execute Javascript  document.querySelector('#checkin').value='31-10-2023'  #javascript
    Execute Javascript  document.querySelector('#checkout').value='29-11-2023'  #javascript
    Click Element    xpath=//input[@aria-controls='select2-hotels_city-results']   Vadodara
    Input Text      class=select2-search__field


TC4
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    15s
    Go To    url=https://nasscom.in/
    ${ele}  Get WebElement    xpath=//a[text()='Members Listing']
    Execute Javascript  argument[0].click()  ARGUMENTS  ${ele}





    
