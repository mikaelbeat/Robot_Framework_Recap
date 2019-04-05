*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LANDING_NAVIGATION_ELEMENT} =  id=mainNav
${WELCOME_TEXT}    It's Nice To Meet You

*** Keywords ***
Navigate To
    go to  ${FRONT_OFFICE_URL}

Verify Page Loaded
    #wait until page contains element  ${LANDING_NAVIGATION_ELEMENT}
    Wait Until Page Contains    ${WELCOME_TEXT}    