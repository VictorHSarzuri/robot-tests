*** Settings ***
Resource    ../resources/amazon.robot
Resource    ../resources/common.robot
Library    Dialogs
Library    OperatingSystem
Test Setup    common.start browser
Test Teardown  common.exit browser
Resource    ../resources/amazon_datareader.robot

*** Variables ***
&{proddata}     searchitem=iphone   expected=iphone
${filepath}    ../datas/csvdata.csv

*** Test Cases ***
amazon invalid product search
    [Tags]    Functional
    [Documentation]     test product search with invalid products
    &{proddata}=    create dictionary   searchitem=fffffffffffffffffffffffdddddddd   expected=No results for fffffffffffffffffffffffdddddddd
    amazon search   &{proddata}

amazon valid product search
    [Tags]    Functinal Smoke
    [Documentation]    test product search with valid products
    amazon search   &{proddata}

amazon test count of displayed product
    [Documentation]    to check whether there are a number of items displayed on page
    amazon.amazon product count     oneplus    xpath: //img[@data-image-latency="s-product-image"]  None