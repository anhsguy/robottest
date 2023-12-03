*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    file:///C:/Users/ndiuser/Documents/learning/robotframework/checkbox.html    chrome
    Select Checkbox    name:option1
