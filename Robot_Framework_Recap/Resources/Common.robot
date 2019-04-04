*** Settings ***
Library    SeleniumLibrary    

*** Keywords ***
Insert testing data
    Log    Inserting testing data

Begin web test
    Open Browser    about:blank    ${BROWSER}
    Maximize Browser Window
    #Set Selenium Implicit Wait    ${IMPLICIT_WAIT}
    
End web test
    Close Browser
    
Cleanup testing data
    Log    Cleaning up the testing dta    