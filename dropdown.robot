*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    file:///C:/Users/ndiuser/OneDrive/Documents/learning/robotframework/dropdown.html
    Select From List By Index    name:months    5
    Select From List by Label    name:days    17
    Select From List By Value    name:year    17
