*** Settings ***
Library    SeleniumLibrary    


*** Keywords ***
Search for products
    Enter search term
    Submit search
    

Enter search term
    Input Text  id=twotabsearchtextbox  ${SEARCH_TERM}


Submit search
    Click Button  //input[@value='Go']