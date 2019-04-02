*** Settings ***
Documentation  These are some web tests
Library  Dialogs
Resource    ../Resources/Common.robot
Resource    ../Resources/AmazonUI.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

# robot -d results/dialogs tests/dialogs.robot

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://www.amazon.com
${SEARCH_TERM} =  Ferrari 458

*** Test Cases ***
Logged out user can search for products
    [Tags]  Web
    ${new_browser} =  Get Selection From User  Which browser?  chrome  ie  firefox
    Set Global Variable  ${BROWSER}  ${new_browser}

Logged out user can add product to cart
    [Tags]  Web
    Execute Manual Step  Do something manually!  It failed!
    Pause Execution