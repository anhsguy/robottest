*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC1
    [Setup]    Open Browser    https://www.tutorialspoint.com    chrome    # setup to open browser
    Input Text    name=key    This is coming from setup/teardown testcase
    [Teardown]    Close Browser    # teardown to close browser
