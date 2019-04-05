*** Settings ***
Resource  ../Resources/Cars_PO/SignIn.robot

*** Keywords ***
Login with many invalid credentials
    [Arguments]    ${InvalidLoginScenarios}
    FOR    ${loginScenario}    IN    @{InvalidLoginScenarios}
    Run Keyword And Continue On Failure    SignIn.Navigate To
    Run Keyword And Continue On Failure    Attempt Login    ${loginScenario}
    Run Keyword And Continue On Failure    Verify Login Page Error Message    ${loginScenario}
    END    
    
Test multiple login scenarios
     [Arguments]    ${Credentials}
     Navigate to Sign In Page
     Attempt Login    ${Credentials}
     Verify Login Page Error Message    ${Credentials.ExpectedErrorMessage}
    
Navigate to Sign In Page
    SignIn.Navigate To

Attempt Login
    [Arguments]  ${Credentials}
    SignIn.Enter Credentials  ${Credentials}
    SignIn.Click Submit
    Sleep  1s

Verify Login Page Error Message
    [Arguments]  ${ExpectedErrorMessage}
    SignIn.Verify Error Message  ${ExpectedErrorMessage}