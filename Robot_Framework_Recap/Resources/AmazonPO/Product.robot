*** Settings ***
Library    SeleniumLibrary    


*** Keywords ***
Verify page loaded
    Wait Until Page Contains  Back to results
    
Add to cart
    Click Button  id:add-to-cart-button