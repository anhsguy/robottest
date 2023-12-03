*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}            file:///C:/Users/ndiuser/Documents/learning/robotframework/login.html    # this variable is used to store the value of the url.
@{LOGIN_DETAILS}    admin@gmail.com    admin
&{LOGIN_VARS}     emailid=admin@gmail.com    password=admin

*** Test Cases ***
TC1
    Open Browser    ${url}    chrome
    Input Text    id:email    &{LOGIN_VARS}\[emailid]
    Input Password    id:passwd    &{LOGIN_VARS}\[password]
    Click Button    id:btnsubmit
