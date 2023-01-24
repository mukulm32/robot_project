*** Settings ***
Library  OperatingSystem


*** Test Cases ***
#usig op system  and print it
TC1
    Create Directory    path=c:\\mine\\demo12


TC2
    Log To Console    c:\\mine\\demo12    
    Log To Console    ${CURDIR}
    Log To Console    ${OUTPUT_DIR}
    Log To Console    ${EXECDIR}
    Log To Console    c:${/}mine${/}demo12
    Log To Console    hi${SPACE}${SPACE}world
    Log To Console    ${TEST_NAME}
    Log To Console    ${SUITE_NAME}


































































































































