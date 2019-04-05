*** Settings ***
Library    SeleniumLibrary    
Resource    ../Resources/Keyword_wtih_return_value_res.robot


*** Variables ***
${Browser}    gc
${Url}    http:///www.thetestingworld.com/testings


*** Test Cases ***
Get return value demo
    ${return_value}    Start borwser and maximize    ${Url}    ${Browser}
    Log    ${return_value} 