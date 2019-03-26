*** Settings ***
Library    SeleniumLibrary    

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]    This is some basic info
    [Tags]    Smoke
    Open Browser    http://www.amazon.com    gc
    Close Browser

*** Keywords ***
