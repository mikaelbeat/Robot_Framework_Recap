*** Settings ***
Library    SeleniumLibrary    


*** Variables ***
${TOPNAV_SEARCH_BAR}    id=twotabsearchtextbox
${TOPNAV_SEARCH_BUTTON}    //input[@value='Go']
${TOPNAV_LOGIN_BUTTON}    //span[contains(text(),'Hello, Sign in')]

*** Keywords ***
Search for products in topnav
    Enter search term
    Submit search
    

Enter search term
    Input Text  ${TOPNAV_SEARCH_BAR}  ${SEARCH_TERM}


Submit search
    Click Button    ${TOPNAV_SEARCH_BUTTON}
    

Click login button
    Click Element    ${TOPNAV_LOGIN_BUTTON}