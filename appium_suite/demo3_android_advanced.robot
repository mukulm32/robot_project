*** Settings ***
Library  AppiumLibrary

*** Test Cases ***
TC1
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
     
     sleep  5s


    # Swipe By Percent    90    70    90    20   #for swipe
     #Swipe By Percent    90    70    90    20   #for swipe activity 1 approach


#2 approch for swipe activity using while logic
     ${count}  Get Matching Xpath Count    xpath=//android.widget.TextView[@text='Art of Asia']
     WHILE    ${count}==0
         Swipe By Percent    90    70    90    20
         ${count}  Get Matching Xpath Count    xpath=//android.widget.TextView[@text='Art of Asia']
     END

     Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Art of Asia']
     Click Element    xpath=//android.widget.TextView[@text='Art of Asia']

     ${count1}   Get Matching Xpath Count   xpath=//android.widget.TextView[@text='South Asia']
     WHILE    ${count1}==0
         Swipe By Percent    90    70    90    20
         ${count1}  Get Matching Xpath Count    xpath=//android.widget.TextView[@text='South Asia']
     END


     Click Element    xpath=//android.widget.TextView[@text='South Asia']


     ${count2}  Get Matching Xpath Count    xpath=//android.widget.TextView[@text='The Taj Mahal']
     WHILE    ${count2}==0
         Swipe By Percent    90    70    90    20
         ${count2}  Get Matching Xpath Count    xpath=//android.widget.TextView[@text='The Taj Mahal']
     END
     
     Click Element    xpath=//android.widget.TextView[@text='The Taj Mahal']

     Wait Until Page Contains Element    xpath=//*[contains(@text,'third regnal year')] 
     Element Should Contain Text    xpath=//*[contains(@text,'third regnal year')]     third regnal year


     Sleep    5s


     [Teardown]  Close Application


TC2 poshmark app login

    Open Application    remote_url=http://localhost:4723/wd/hub   platformName=android   #browserName=chrome
     ...  deviceName=Redmi
     ...  appPackage=org.khanacademy.android  appActivity=org.khanacademy.android.ui.library.MainActivity
     ...  noRest=True

     Set Appium Timeout    20s


     
     
     
    
     
