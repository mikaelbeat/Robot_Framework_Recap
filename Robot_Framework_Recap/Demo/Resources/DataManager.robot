*** Settings ***
Documentation    This layer gets data from external files
Library    ../Libraries/Csv.py       


*** Keywords ***
Get CSV Data
    [Arguments]    ${FilePath}
    ${Data}    Read Csv File    ${FilePath}
    [Return]    ${Data}
 