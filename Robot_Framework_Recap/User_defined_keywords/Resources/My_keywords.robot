*** Settings ***
Library    ../Libraries/User_keywords.py    


*** Variables ***


*** Keywords ***
Create folder in runtime
    [Arguments]    ${folderName}    ${subfolderName}
    Create Folder    ${folderName}
    Create Subfolder    ${subfolderName}
    Log    "Tasks done successfully"    


Concatinate username and password
    [Arguments]    ${username}    ${password}
    Concatinate Two Values    ${username}    ${password}