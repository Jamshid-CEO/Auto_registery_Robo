*** Settings ***
Documentation    Automate login or account creation on Proliga
Library          SeleniumLibrary

*** Variables ***
${URL}            https://proliga.uz/auth
${USERNAME}       testuser
${EMAIL}          test@example.com
${PASSWORD}       Test12345

*** Test Cases ***
Create And Login Account
    [Documentation]    Automates account creation and login process on Proliga
    Open Browser To Login Page
    Fill Account Creation Form
    Submit Account Creation Form
    Validate Successful Login
    [Teardown]         Close Browser

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Fill Account Creation Form
    Wait Until Element Is Visible    xpath=//input[@name="username"]    10s
    Input Text    xpath=//input[@name="username"]    ${USERNAME}
    Input Text    xpath=//input[@name="email"]       ${EMAIL}
    Input Text    xpath=//input[@name="password"]    ${PASSWORD}

Submit Account Creation Form
    Wait Until Element Is Visible    xpath=//button[contains(text(), 'Create Account')]    10s
    Click Button    xpath=//button[contains(text(), 'Create Account')]
    Sleep    3s

Validate Successful Login
    Wait Until Page Contains    Welcome    10s