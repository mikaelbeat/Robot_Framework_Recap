*** Settings ***
Library    SeleniumLibrary    


*** Keywords ***
Verify search completed
    Wait Until Page Contains  Gantz Omnibus 1
    
Click product link
    Click Element   //span[contains(text(),'Gantz Omnibus Volume 1')]