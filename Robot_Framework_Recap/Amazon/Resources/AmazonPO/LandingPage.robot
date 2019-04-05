*** Settings ***
Library    SeleniumLibrary  


*** Variables ***
${YOUR_AMAZON_TOPNAV_LINK}    Your Amazon.com


*** Keywords ***
Load
    Go To  ${START_URL}

Verify page loaded
    Wait Until Page Contains  ${YOUR_AMAZON_TOPNAV_LINK}
