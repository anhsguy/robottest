*** Variables ***
${number}         100
${name}           riya

*** Test Cases ***
TC1
    Log    Hello Word
    Should Be True    ${number} ==100
    ${str 1}     Catenate    Hello    World
    Log    ${str 1}
    ${a}     Set Variable    Hi
    Log    ${a}
    ${b}     Set Variable If    ${number} >0    Yes    No
    Log    ${b}
