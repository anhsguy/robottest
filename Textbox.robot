*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    https://www.tutorialspoint.com/    Chrome
    Input Text    name:key    angularjs
    Click Button    id:btnSearch
