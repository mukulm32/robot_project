*** Settings ***
Library  AppiumLibrary

*** Test Cases ***
TC1


    Open Application    remote_url=http://localhost:4723/wd/hub   platformName=android   #browserName=chrome
    ...  deviceName=Redmi
    ...  app=C:\\Users\\40032341\\khan-academy-7-3-2.apk

    Run Keyword And Ignore Error   Wait Until Page Contains Element    android=UiSelector().text("Dismiss")     30s
    Run Keyword And Ignore Error   Click Element    android=UiSelector().text("Dismiss")


    Wait Until Page Contains Element    android=UiSelector().description("Settings")   30s
    Click Element    android=UiSelector().description("Settings")

    Wait Until Page Contains Element    android=UiSelector().textContains("Sign in")  30s
    Click Element    android=UiSelector().textContains("Sign in")

    Wait Until Page Contains Element    android=UiSelector().textContains("Sign up with email")   30s
    Click Element    android=UiSelector().textContains("Sign up with email")

    Wait Until Page Contains Element    android=UiSelector().textContains("First name")  30s
    Input Text    android=UiSelector().textContains("First Name")    Mukul

    Wait Until Page Contains Element    android=UiSelector().textContains("Last name")  30s
    Input Text    android=UiSelector().textContains("Last name")    Mangde

    Wait Until Page Contains Element    android=UiSelector().textContains("Birthday")
    Click Element    android=UiSelector().textContains("Birthday")

    Wait Until Page Contains Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(0)  30s
    Clear Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(0)
    Input Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(0)    Feb

    Wait Until Page Contains Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)  30s
    Clear Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
    Input Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)    03

     Wait Until Page Contains Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)  30s
    Clear Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
    Input Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)    2000

    Click Element    android=UiSelector().textContains("OK")

    Wait Until Page Contains Element    android=UiSelector().textContains("Email address")  30s
    Input Text    android=UiSelector().textContains("Email address")    mukul@gmail.com

    Input Text    android=UiSelector().textContains("Password")    123456

    Click Element    android=UiSelector().textContains("CREATE")

    Wait Until Page Contains Element    android=UiSelector().textContains("Invalid password")  30s
    Element Should Contain Text    android=UiSelector().textContains("Invalid")    Invalid password


TC2
     Open Application    remote_url=http://localhost:4723/wd/hub   platformName=android   #browserName=chrome
     ...  deviceName=Redmi
     ...  appPackage=org.khanacademy.android  appActivity=org.khanacademy.android.ui.library.MainActivity
     ...  noRest=True

     Set Appium Timeout    20s

     #Run Keyword And Expect Error    Wait Until Page Contains Element  xpath=//*[@text='Dismiss']

     Wait Until Page Contains Element    xpath=//*[@text='Dismiss']
     Run Keyword And Ignore Error   Click Element    xpath=//*[@text='Dismiss']

     Wait Until Page Contains Element    xpath=//android.widget.Button[@text='Search']
     Click Element    xpath=//android.widget.Button[@text='Search']

     Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Arts and humanities']
     Click Element    xpath=//android.widget.TextView[@text='Arts and humanities']

     ${dic_arg}  Create Dictionary  strategy=-android uiautomator  selector=UiSelector().text("Art of Asia")
     Execute Script    mobile: scroll  &{dic_arg}

     Click Element    android=UiSelector().text("Art of Asia")

     ${dic_arg}  Create Dictionary  strategy=-android uiautomator  selector=UiSelector().text("Southeast Asia")
     Execute Script    mobile: scroll  &{dic_arg}

     Click Element    android=UiSelector().text("Southeast Asia")

