*** Settings ***
Library  DateTime


*** Test Cases ***
TC1
    Log To Console  message=Mukul Mangde
    Log To Console  Hello


TC2
    ${my_name}  Set Variable  Mukul
    Log To Console  ${my_name}


TC3
    ${to_date}  Get Current Date
    Log To Console  ${to_date}

TC4
    ${radius}  Set Variable  2
    ${Area}   Evaluate  ${radius}*${radius}*3.14
    Log To Console  ${Area}