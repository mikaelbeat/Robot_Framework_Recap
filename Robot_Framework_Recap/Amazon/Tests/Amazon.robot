*** Settings ***
Resource    ../Resources/Common.robot
Resource    ../Resources/AmazonUI.robot
Suite Setup    Insert testing data
Test Setup    Begin web test
Test Teardown    End web test
Suite Teardown    Cleanup testing data


*** Variables ***
${IMPLICIT_WAIT}    5 seconds
${BROWSER}    gc
${START_URL}     http://www.amazon.com
${SEARCH_TERM}    Gantz Omnibus 1
${EMAIL}    username
${PASSWORD}    password


*** Test Cases ***
User should not able to log in with invalid credentials
    AmazonUI.Go to Url
    AmazonUI.Click login button in topnav
    AmazonUI.Login with invalid credentials    ${EMAIL}    ${PASSWORD}   


User must sign in to check out
    [Documentation]    This is some basic info
    [Tags]    Smoke
    AmazonUI.Go to Url
    AmazonUI.Search for products
    AmazonUI.Select product from search results
    AmazonUI.Add product to cart
    AmazonUI.Begin checkout
