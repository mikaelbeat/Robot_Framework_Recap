*** Settings ***
Library    SeleniumLibrary    


*** Keywords ***
Search for products
    Enter search term
    Submit search
    

Enter search term
    Input Text  id=twotabsearchtextbox  Gantz Omnibus 1


Submit search
    Click Button  //input[@value='Go']