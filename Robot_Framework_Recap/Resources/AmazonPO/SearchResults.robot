*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${SEARCH_RESULT}    //span[contains(text(),'Gantz Omnibus Volume 1')]    


*** Keywords ***
Verify search completed
    Wait Until Page Contains  ${SEARCH_TERM}
    
Click product link
    Click Element    ${SEARCH_RESULT} 