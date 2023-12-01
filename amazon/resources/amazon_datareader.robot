*** Settings ***
Documentation    reading all the data required for amazon application
Library    ../customlib/csvinput.py
*** Variables ***


*** Keywords ***
Get csv data
    [Arguments]    ${filepath}
    ${data} =    csv input process   ${filepath}
    [Return]    ${data}
