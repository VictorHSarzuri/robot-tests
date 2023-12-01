*** Settings ***
Documentation                                      Web Basic Test
Library                                            Selenium2Library

*** Variables ***
${url}                                              https://www.google.com
${browser}                                          chrome
${text}                                             xpath=//*[@class="gLFyf"]
${search_button}                                    xpath=//*[@class="gNO89b"]

*** Test Cases ***
User can open page
    [Documentation]                                 Open the google page
    open browser                                    ${URL}    ${BROWSER}
    wait until page contains                        ${url}
    close browser

User fill in the Search text box
    [Documentation]                                 The user search 'Test Case Definition'
    open browser                                    ${URL}    ${browser}
    wait until page contains                        ${URL}
    input text                                      ${text}  Test Case Definition
    Press Keys                                      ${text}    ENTER
    wait until page contains                        Test
    sleep     3s
    Close Browser
