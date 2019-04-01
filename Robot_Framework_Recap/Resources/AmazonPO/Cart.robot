*** Settings ***
Library    SeleniumLibrary    


*** Keywords ***
Verify Product Added
     Wait Until Page Contains  Added to Cart
     
Proceed to checkout
    Click Link  id:hlb-ptc-btn-native