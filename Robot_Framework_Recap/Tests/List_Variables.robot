*** Settings ***


*** Variables ***
@{MY_VARIABLE}    Hello There    Value 2    Value 3


*** Test Cases ***
List variable demonstration
    Log    @{MY_VARIABLE}[0]    
    Log    @{MY_VARIABLE}[1]
    Log    @{MY_VARIABLE}[2]  
    
    
List variable demonstration 2
        @{my_list_variable}    Create List    Item 1  Item 2  Item3      
        Log    @{my_list_variable}[0]    
        Log    @{my_list_variable}[1]
        Log    @{my_list_variable}[2]  