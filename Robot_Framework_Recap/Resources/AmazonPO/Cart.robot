*** Settings ***
Library    SeleniumLibrary    


*** Variables ***
${ADDED_TO_CART_TEXT}    Added to Cart
${PROCEED_TO_CHECKOUT_BUTTON}    id:hlb-ptc-btn-native

*** Keywords ***
Verify Product Added
     Wait Until Page Contains  ${ADDED_TO_CART_TEXT} 
     
Proceed to checkout
    Click Link  ${PROCEED_TO_CHECKOUT_BUTTON}