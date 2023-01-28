*** Settings ***
Library  AppiumLibrary

*** Test Cases ***
#assignment launching the native app
TC1 sign up
    [Documentation]  working with native app
    ...  for automation signup activity
    Open Application    remote_url=http://localhost:4723/wd/hub   platformName=android   #browserName=chrome
    ...  deviceName=Redmi
    app=