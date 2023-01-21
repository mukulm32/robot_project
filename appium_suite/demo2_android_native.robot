*** Settings ***
Library  AppiumLibrary

*** Test Cases ***
TC1 sign up
    [Documentation]  working with native app
    ...  for automation signup activity
    Open Application    remote_url=http://localhost:4723/wd/hub   platformName=android   #browserName=chrome
    ...  deviceName=Redmi
    ...  app=C:\\Users\\40032341\\khan-academy-7-3-2.apk

    #runs always wether test case pass or fail
    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']     30s
     Click Element    xpath=//*[@text='Dismiss']

    Wait Until Page Contains Element  xpath=//android.widget.ImageView[@content-desc='Settings']  30s
    Click Element     xpath=//android.widget.ImageView[@content-desc='Settings']

     Wait Until Page Contains Element  xpath=//android.widget.TextView[@text='Sign in']  30s
     Click Element    xpath=//android.widget.TextView[@text='Sign in']

     Wait Until Page Contains Element  xpath=//android.widget.TextView[@text='Sign up with email']  30s
    Click Element   xpath=//android.widget.TextView[@text='Sign up with email']

    Wait Until Page Contains Element  xpath=//android.widget.EditText[@text='First name']  30s
    Input Text   //android.widget.EditText[@text='First name']  Mukul

    Wait Until Page Contains Element  xpath=//android.widget.EditText[@text='Last name']  30s
    Input Text   //android.widget.EditText[@text='Last name']  Mangde

    Wait Until Page Contains Element  xpath=//android.widget.TextView[@text='Birthday']
    Click Element    xpath=//android.widget.TextView[@text='Birthday']

    Wait Until Page Contains Element   xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[1]  30s
    Click Element    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[1]
    Clear Text    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[1]
    Input Text    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[1]    Feb

    Wait Until Page Contains Element  xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]  30s
    Click Element    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]
    Clear Text    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]
    Input Text    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]  03

    Wait Until Page Contains Element  xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]  30s
    Click Element    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]
    Clear Text    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]
    Input Text    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]    2000

    Click Element  xpath=//android.widget.Button[@text='OK']

    Wait Until Page Contains Element   xpath=//android.widget.EditText[@text='Email address']  30s
    Input Text    xpath=//android.widget.EditText[@text='Email address']    mmm@gmail.com

    Wait Until Page Contains Element  xpath=//android.widget.EditText[@text='Password']
    Input Password    xpath=//android.widget.EditText[@text='Password']    123456

    Wait Until Page Contains Element  xpath=//android.widget.TextView[@text='CREATE']  30s
    Click Element    xpath=//android.widget.TextView[@text='CREATE']

    Wait Until Page Contains Element  xpath=//android.widget.TextView[@text='There’s already an account with that email. If it’s yours, log in to continue.']  30s
    Element Should Contain Text    xpath=//android.widget.TextView[@text='There’s already an account with that email. If it’s yours, log in to continue.']     There’s already an account with that email. If it’s yours, log in to continue.

    Sleep    5s

    [Teardown]  Close Application







