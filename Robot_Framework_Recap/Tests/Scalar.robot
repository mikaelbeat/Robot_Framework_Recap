*** Settings ***




*** Variables ***
${MY_VARIABLE}    This is my input data



*** Test Cases ***
Set a variable in the test case
    ${my_new_variable}    Set Variable    My new variable
    Log    ${my_new_variable}    
    
Variable demonstration
    Log    ${MY_VARIABLE}
    
Variable demonstration 2
    Log    ${MY_VARIABLE}        


*** Keywords ***
