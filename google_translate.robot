*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://translate.google.com
${browser}        chrome
${input_text}     check

*** Test Cases ***
Translate English to Chinese
    Open Browser    ${URL}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains Element    name=sl
    Input Text    name=sl    English
    Input Text    name=tl    Chinese (Simplified)
    Input Text    name=q    ${input_text}
    Wait Until Page Contains Element    xpath=//span[@class="tlid-translation translation"]
    ${translated_text}    Get Text    xpath=//span[@class="tlid-translation translation"]
    Set Clipboard To String    ${translated_text}
    Log    Translated Text: ${translated_text}
    Close Browser

*** Keywords ***
Maximize Browser Window
    Maximize Browser Window
