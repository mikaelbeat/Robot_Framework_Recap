*** Settings ***
Library    SeleniumLibrary    


*** Keywords ***
Verify search completed
    Wait Until Page Contains  ${SEARCH_TERM}
    
Click product link
    Click Element   //span[contains(text(),'Gantz Omnibus Volume 1')]