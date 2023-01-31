*** Settings ***
Library  AppiumLibrary

*** Test Cases ***
#assignment launching the native app
TC1 sign up
    #[Documentation]  working with native app
    #...  for automation signup activity
    Open Application    remote_url=http://localhost:4723/wd/hub   platformName=android   #browserName=chrome
    ...  deviceName=Redmi
    ...   appPackage=com.Dominos    appActivity=com.Dominos.activity.SplashActivity
    ...  noRest=True

    Set Appium Timeout    20s
    
    Wait Until Page Contains Element    xpath=//android.widget.LinearLayout[@content-desc="098819 98978"]
    Click Element    xpath=//android.widget.LinearLayout[@content-desc="098819 98978"]

    Wait Until Page Contains Element  xpath=//android.widget.Button[@text='ONLY THIS TIME']
    Click Element    xpath=//android.widget.Button[@text='ONLY THIS TIME']

    Wait Until Page Contains Element  xpath=//android.widget.RelativeLayout[@resource-id='com.Dominos:id/back_btn']
    Click Element    xpath=//android.widget.RelativeLayout[@resource-id='com.Dominos:id/back_btn']
    
    
    Wait Until Page Contains Element  xpath=//android.widget.TextView[@text='Change Location']
    Click Element    xpath=//android.widget.TextView[@text='Change Location']

    #Wait Until Page Contains Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ImageView
    
    
    Wait Until Page Contains Element    xpath=//android.widget.LinearLayout[@resource-id='com.Dominos:id/right_layout']
    Click Element    xpath=//android.widget.LinearLayout[@resource-id='com.Dominos:id/right_layout']

    Wait Until Page Contains Element    xpath=(//android.widget.ImageView[@resource-id='com.Dominos:id/iv_menu_category'])[1]
    Click Element    xpath=(//android.widget.ImageView[@resource-id='com.Dominos:id/iv_menu_category'])[1]

    Wait Until Page Contains Element    xpath=(//android.widget.TextView[@text='ADD TO CART'])[2]
    Click Element    xpath=(//android.widget.TextView[@text='ADD TO CART'])[2]

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='NO THANKS']
    Click Element    xpath=//android.widget.TextView[@text='NO THANKS']

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='VIEW CART']
    Click Element    xpath=//android.widget.TextView[@text='VIEW CART']

    Wait Until Page Contains Element    xpath=//android.widget.ImageView[@resource-id='com.Dominos:id/iv_item']
    Click Element    xpath=//android.widget.ImageView[@resource-id='com.Dominos:id/iv_item']


    ${count}   Get Matching Xpath Count      xpath=//android.widget.ImageView[@resource-id='com.Dominos:id/topping_checkbox']
     WHILE    ${count}==0
         Swipe By Percent  90   70    90    70
         ${count}  Get Matching Xpath Count    xpath=//android.widget.ImageView[@resource-id='com.Dominos:id/topping_checkbox']
     END

     Click Element    xpaath=//android.widget.ImageView[@resource-id='com.Dominos:id/topping_checkbox']
     
     Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Nagar, ., Nagpur']
     Element Should Contain Text    xpath=//android.widget.TextView[@text='Nagar, ., Nagpur']    Nagar, ., Nagpur
     
