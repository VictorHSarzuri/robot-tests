*** Settings ***
Resource   ../resources/PO/homepage.robot
Resource   ../resources/PO/amazon_nav.robot
Resource   ../resources/PO/amazon_login.robot

Library    Dialogs

*** Variables ***

*** Keywords ***
amazon search
    [Arguments]    ${searchitem}    ${expected}
    amazon_nav.navigate to amazon home page
    homepage.search item    ${searchitem}
    wait until page contains    ${expected} 
    page should contain     ${expected}

amazon login
    [Arguments]  ${email}   ${password}
    amazon_nav.navigate to amazon login page
    amazon_login.fill email    ${email}
    amazon_login.continue with email
    amazon_login.fill password    ${password}
    amazon_login.continue with password

amazon login csv
    [Arguments]  @{val}
    amazon_nav.navigate to amazon login page
    amazon_login.fill email    ${val}[0]
    amazon_login.continue with email
    Run Keyword And Ignore Error    amazon_login.fill password    ${val}[1]
    Run Keyword And Ignore Error    amazon_login.continue with password
    page should contain    ${val}[2]

amazon product count
    [Arguments]    ${searchitem}    ${xpathsearch}    ${count}
    amazon_nav.navigate to amazon home page
    homepage.search item    ${searchitem}
    sleep     3s
    Page Should Contain Element    ${xpathsearch}  limit=${Count}