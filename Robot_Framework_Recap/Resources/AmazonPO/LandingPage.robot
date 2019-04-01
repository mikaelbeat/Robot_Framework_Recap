*** Settings ***
Library    SeleniumLibrary    


*** Keywords ***
Load
    Go To  ${START_URL}

Verify page loaded
    Wait Until Page Contains  Your Amazon.com
