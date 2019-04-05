*** Settings ***
Library    SeleniumLibrary    


*** Variables ***
${SIGNIN_MAIN_HEADING}    //h1
${LOGIN_BUTTON}    //span[contains(text(),'Hello, Sign in')]
${EMAIL_FIELD}    id=ap_email
${PASSWORD_FIELD}    id=ap_password
${SIGNIN_BUTTON}    id=signInSubmit

*** Keywords ***
Verify page loaded
    Page Should Contain Element    ${SIGNIN_MAIN_HEADING}   
    Element Text Should Be    ${SIGNIN_MAIN_HEADING}     Sign in    
    
    
Valid credentials
    [Arguments]    ${email}    ${password}
    Fill email field    ${email} 
    Fill password field    ${password}
    Click sign in button
    
    
Invalid credentials
    [Arguments]    ${email}    ${password}
    Fill email field    ${email} 
    Fill password field    ${password}
    Click sign in button
    Element Text Should Be    ${SIGNIN_MAIN_HEADING}     Sign in 
    
    
Fill email field
    [Arguments]    ${email}
    Input Text    ${EMAIL_FIELD}    ${email}     
    
    
Fill password field
    [Arguments]    ${password}
    Input Password    ${PASSWORD_FIELD}    ${password}   
    
    
Click sign in button
    Click Button    ${SIGNIN_BUTTON}            