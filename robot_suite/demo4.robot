*** Settings ***
Library  OperatingSystem
Library    Collections
Library    String

*** Test Cases ***
TC1
    ${list}  List Files In Directory    path=C:\\Users\\40032436\\AppData\\Local\\Temp
    Log To Console    ${list}
    Log List  ${list}
    Log To Console    ${list}[0]  
    
TC2  
    Remove File    path
    File Should Not Exist    path
    
TC3
    File Should Exist    path

TC4
    ${name}  Set Variable  robot framework session
    Log To Console    ${name}     
    ${upper}  Convert To Upper Case  ${name}
    Log To Console    ${upper}
    ${re_str}   Remove String  ${name}    session
    Log To Console    ${re_str}


TC5
    ${num1}  Set Variable  $200,100
    ${num}  Set Variable  $200
    ${nnum1}  Remove String    ${num1}  $   ,
    Log To Console    ${nnum1}
    ${nnum2}  Remove String    ${num}  $
    Log To Console    ${nnum2}
    ${sum}  Evaluate    ${nnum1}+${nnum2}
    Log To Console    ${sum}
        
      