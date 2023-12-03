*** Settings ***
Library           OperatingSystem
Library           func.py
Library           classA.py    ${1}    ${2}
Library           test_string.py

*** Variables ***

*** Test Cases ***
TC1
    [Documentation]    My first test case in ride
    Log    Welcome to our first test case
    Log    In robot framework
    Log    End of the test case

Launch py File
    ${result} =    evaluate    print(os.system('echo hello world'))
    ${rc}    ${output} =    Run and Return RC and Output    echo "My string printed by a command"    # Any command could be called here.
    Log    ${rc}
    Should Be Equal As Integers    ${rc}    0    # Check if command execution was succesful.
    Log    ${output}    # Log output of the command.

Calling function from python
    #${value}=    func.add_one_to_integer    ${1}
    ${value}    CUSTOM KEYWORD TO ADD    ${1}
    SHOULD BE EQUAL    ${value}    ${2}

Class: sum from python
    #${value}    classA.sum_of_value    ${1}    ${2}
    ${value}    SUM OF VALUE
    SHOULD BE EQUAL    ${value}    ${3}

Class: diff from python
    ${value}    DIFF OF VALUE
    SHOULD BE EQUAL    ${value}    ${-1}

Compare Strings
    ${string1}    Set Variable    my book
    ${string2}    Set Variable    my book
    # Compare strings using the STRING MATCH keyword
    ${result}    STRING MATCH    ${string1}    ${string2}
    # Verify the result is True (strings match)
    Should Be True    ${result}

String_match
    ${string1}    Set Variable    my book
    ${string2}    Set Variable    my book
    # Compare strings ignoring case
    Should Be Equal As Strings    ${string1}    ${string2}
#PS C:\Users\ndiuser\OneDrive\Documents\learning\robotframework> jy_robot_env\Scripts\activate
#(jy_robot_env) PS C:\Users\ndiuser\OneDrive\Documents\learning\robotframework>
#Terminal: robot -T FirstTestCase.robot