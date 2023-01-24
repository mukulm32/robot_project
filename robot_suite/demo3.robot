*** Settings ***
Library    Collections
*** Variables ***  #creating list and dic
${BROWSER_NAME}  Chrome
${MOBILE_NUM}  988199***
@{COLOUR}  red  yellow  blue
&{MY_DETAILS}  name=Mukul   role=GTE   Mobile=9881998


*** Test Cases ***
Tc1
    ${my_name}  Set Variable    Mukul
    Log To Console    ${my_name}
    Log To Console    ${BROWSER_NAME}

TC2
    Log To Console    ${BROWSER_NAME}
    Log To Console    ${MOBILE_NUM}

TC3
    Log To Console    ${COLOUR}[2]
    Log To Console    ${COLOUR}


TC4
    ${item_count}  Get Length    ${COLOUR}
    Log To Console    ${item_count}

TC5
    @{fruit}    Create List  apple  mango  orange
    Log To Console    ${fruit}[1]
    #append grapes
    Append To List  ${fruit}  grapes
    Log To Console    ${fruit}
    #remove apple
    Remove Values From List    ${fruit}    apple
    Log To Console    ${fruit}
    #insert pineapple to index1
    Insert Into List    ${fruit}    1    pineapple
    ${count}  Get Length    ${fruit}
    Log To Console    ${count}
    #print ${fruit}
    Log To Console    ${fruit}

TC6
    FOR    ${i}    IN RANGE    1    10
    Log To Console    ${i}

TC7
    @{fruit}  Create List  orange  mango  apple  pineapple
    Log To Console    ${fruit}
    ${count}  Get Length    ${fruit}
    Log To Console    ${fruit}
    FOR    ${i}    IN RANGE    0  4
        Log To Console    ${fruit}[${i}]
    END

TC8
    @{fruit}  Create List  orange  mango  apple  pineapple  kiwi
    Log To Console    ${fruit}
    FOR    ${fruit}    IN RANGE    @{fruit}
        Log To Console    ${fruit}
    END
    
TC9
    Log To Console    ${MY_DETAILS}[Mobile]
    
TC10
    &{emp_dic}  Create Dictionary   emp_id=101   emp_name=jack   role=qa
    Log To Console    ${emp_dic}[emp_id]





