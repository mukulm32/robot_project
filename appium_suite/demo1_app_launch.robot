*** Settings ***
Library  AppiumLibrary

*** Test Cases ***
TC1
    Open Application    remote_url=http://localhost:4723/wd/hub   platformName=android   #browserName=chrome
    ...  deviceName=Redmi
    ...  app=C:\\Users\\40032341\\khan-academy-7-3-2.apk

    ${page_source}  Get Source
    Log To Console    ${page_source}
    Sleep    5s
    Close Application
    
TC2    
    Open Application    remote_url=http://localhost:4723/wd/hub   platformName=android   #browserName=chrome
    ...  deviceName=Redmi
    ...  app=C:\\Users\\40032341\\khan-academy-7-3-2.apk
    
     Wait Until Page Contains Element    xpath=//*[@text='Dismiss']     30s
     Click Element    xpath=//*[@text='Dismiss']
     
     
     Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']   10s
     Click Element    xpath=//android.widget.TextView[@text='Sign in']

     Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']   10s
     Click Element    xpath=//android.widget.TextView[@text='Sign in']
     
     Click Element    xpath=//android.widget.EditText[@text='Enter an e-mail address or username']
     Input Text    xpath=//android.widget.EditText[@text='Enter an e-mail address or username']    mukul


     Click Element    xpath=//android.widget.EditText[@text='Password']
     Input Text    xpath=//android.widget.EditText[@text='Password']    123456

     Wait Until Page Contains Element    xpath=//android.widget.Button[@content-desc='Sign in']   20s
     Click Element    xpath=//android.widget.Button[@content-desc='Sign in']



     Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='There was an issue signing in']  20s
     Element Should Contain Text    xpath=//android.widget.TextView[@text='There was an issue signing in']    There was an issue signing in

    Sleep    5s
    [Teardown]  Close Application

