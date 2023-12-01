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
&{credential}   email=testingdeveloper080@gmail.com  password=Fbx&Yv5C.WEqes*
${filepath}    ../datas/csvdata.csv
${filepathprod}  ../datas/product.csv
*** Test Cases ***
amazon login invalid scenarios
    [Tags]  Negative
    [Documentation]    to test  invalid login scenarios with data driven
    @{csvdata}=    amazon_datareader.Get csv data    ${filepath}
    FOR    ${val}    IN    @{csvdata}
        log to console    ${val}      
        amazon login csv    @{val}
    END

amazon login scenarios
    [Tags]    Positive
    [Documentation]    to test  valid login scenarios
    [Template]    amazon login
    &{credential}






