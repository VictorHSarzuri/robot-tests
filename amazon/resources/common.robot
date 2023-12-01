*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
start browser
    open browser     about:blank    chrome
    maximize browser window

exit browser
    close all browsers



