*** Settings ***
Library  AppiumLibrary

*** Test Cases ***
TC1

    ${dic}  Create Dictionary  buildName=khan
    ...  projectName=khan academy ios trial
    ...  userName=mukulmangde_kXIv4Y
    ...  accessKey=4TMnQt7D4nFsdpEni9pp

    #log to console

    Open Application    remote_url=http://hub.browserstack.com/wd/hub
    ...  platformName=ios
    ...  deviceName=iphone 11 Pro
    ...  app=bs://83bb55398d97693e28d68af8fa24fcec237f6519
    ...  platformVersion=13
    ...  bstack:options=${dic}

    ${app}  Get Source
    log  ${app}
    
    Input Text    xpath=//XCUIElementTypeTextField[@name='test-Username']    standard_user
    Input Password    name=test-Password    secret_sauce
    Click Element    name=test-LOGIN
    
    Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name='test-ADD TO CART']   20s
    Click Element    xpath=(//*[@name='test-ADD TO CART'])[1]
    Click Element    xpath=(//*[@name='test-ADD TO CART'])[3]
    
    Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name="test-Cart"]  30s
    Click Element    xpath=//XCUIElementTypeOther[@name="test-Cart"]

    Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name="test-CHECKOUT"]
    Click Element    xpath=//XCUIElementTypeOther[@name="test-CHECKOUT"]
    Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-First Name"]
    Input Text    xpath=//XCUIElementTypeTextField[@name="test-First Name"]    MIKE
    Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-Last Name"]
    Input Text    xpath=//XCUIElementTypeTextField[@name="test-Last Name"]    MAC
    Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-Zip/Postal Code"]
    Input Text    xpath=//XCUIElementTypeTextField[@name="test-Zip/Postal Code"]    440022
    Click Element    xpath=//XCUIElementTypeOther[@name="test-CONTINUE"]
    Should Contain   xpath=//XCUIElementTypeStaticText[@label='Payment Information']   Payment Information

    [Teardown]  Close Application
