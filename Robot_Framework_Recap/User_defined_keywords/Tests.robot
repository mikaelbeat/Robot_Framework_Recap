*** Settings ***
Resource    Resources/My_keywords.robot


*** Variables ***



*** Test Cases ***
Test case to create new folder
    My_keywords.Create folder in runtime    HELLO1234    TESTING
    
    
Combine username and password
    ${result}    My_keywords.Concatinate username and password    dragon    ofthenorth
    Log    ${result}    