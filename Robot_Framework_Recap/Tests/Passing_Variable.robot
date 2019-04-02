*** Settings ***
Library    SeleniumLibrary    


*** Variables ***


*** Test Cases ***
User can search for products
    @{url_and_browser}    Set Variable    http://www.google.com  gc
    
    Begin web test    @{url_and_browser}
    
    #Begin web test    http://www.amazon.com    gc


*** Keywords ***
Begin web test
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}    
    Close Browser
    
Begin web test 2
    [Arguments]    @{url_and_browser}
    Open Browser    @{url_and_browser}[0]    @{url_and_browser}[1]
    Close Browser