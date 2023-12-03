*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    file:///C:/Users/ndiuser/OneDrive/Documents/learning/robotframework/radiobutton.html    chrome
    Select Radio button    gender    female
