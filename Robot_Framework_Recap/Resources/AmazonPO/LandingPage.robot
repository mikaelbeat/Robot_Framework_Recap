*** Settings ***
Library    SeleniumLibrary    


*** Keywords ***
Load
    Go To  http://www.amazon.com

Verify page loaded
    Wait Until Page Contains  Your Amazon.com
