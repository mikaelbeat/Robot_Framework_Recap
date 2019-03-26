*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${selenium_speed}  1 seconds
${implicit_wait}  20 seconds
${browser}  gc
${url}  http://www.amazon.com
${header}  Your Amazon.com
${search_field}  id=twotabsearchtextbox
${search_term}  Vinland Saga 1
${search_button}  xpath=//*[@id="nav-search"]/form/div[2]/div/input
${search_result}  ${search_term}
${product_link}  css=
${product_page}  Back to search results
${add_to_cart_button}  id=add-to-cart-button
${added_to_cart_confirmation}  Added to Cart
${proceed_to_checkout_button}  id=hlb-ptc-btn-native
${sign_in_form_header}  Sign in


*** Test Cases ***
User must sign in to check out
    [Documentation]    This is some basic info
    [Tags]    Smoke
    Open Browser    about:blank  ${browser}
    Go To  ${url}
    Wait Until Page Contains  ${header}
    Input Text  ${search_field}  ${search_term}
    Click Button  ${search_button}
    Wait Until Page Contains  ${search_result}
    Click Link  ${product_link}
    Wait Until Page Contains  ${product_page}
    Click Button  ${add_to_cart_button}
    Wait Until Page Contains  ${added_to_cart_confirmation}
    Click Link  ${proceed_to_checkout_button}
    Page Should Contain  ${sign_in_form_header}
    Close Browser
    
*** Keywords ***