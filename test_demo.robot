*** Settings ***
Documentation    A test suit for vaild login
Library  SeleniumLibrary

*** Test Cases ***
Validate Successful login
    Open Browser
    Create Account

*** Keywords ***
Open Browser
    Create Webdriver Chrome
    Go To  https://proliga.uz/

Create Account
    Click Button    css:.border-2 uppercase border-primary transition-all text-center max-w-64 px-5 xs:px-5 py-4 rounded-sm font-bold xl:text-lg w-full -skew-x-12 bg-transparent text-primary hover:bg-primary hover:bg-opacity-55 hover:text-black
