*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC1
    BrowserDetails    https://www.google.com/
    Input Text    id=APjFqb    This is entered from robotframework testcase

*** Keywords ***
BrowserDetails
    [Arguments]    ${url}    # augument to the browser detail keyword
    Open Browser    ${url}    chrome
    Maximize Browser Window
