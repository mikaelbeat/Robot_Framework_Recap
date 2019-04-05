*** Settings ***
Library    SeleniumLibrary    


*** Variables ***


*** Keywords ***
Start borwser and maximize
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser} 
    Maximize Browser Window
    ${title}    Get Title
    [Return]    ${title}   