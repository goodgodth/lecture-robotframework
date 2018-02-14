*** Settings ***
Library    Selenium2Library

*** Variables ***
${KEYWORD}    This is a book
${KEYWORD2}    This${SPACE}${SPACE}${SPACE}${SPACE}is${SPACE}${SPACE}${SPACE}a${SPACE}${SPACE}book


*** Keywords ***
Open Google by chrome
    Open Browser    http://www.google.com    chrome

Open Google by firefox
    Open Browser    http://www.google.com    firefox

Open Google by select browser
    [Arguments]    ${browser}
    Open Browser    http://www.google.com    ${browser}

Search with Keyword
    [Arguments]    ${keyword}
    Input Text     lst-ib    ${keyword}${\n}

Verify Show Result
    [Arguments]    ${keyword}
    Wait Until Page Contains     ${keyword}


*** Test Cases ***
Test1
    [Documentation]   Test Google by chrome
    [Tags]    DEBUG
    Open Google by chrome
    Search with Keyword    ${KEYWORD}
    Verify Show Result     ${KEYWORD}

Test2
    [Documentation]   Test Google by chrome
    [Tags]    DEBUG
    Open Google by firefox
    Search with Keyword    ${KEYWORD2}
    Verify Show Result     ${KEYWORD2}

Test3
    [Documentation]   Test Google by chrome
    [Tags]    DEBUG
    Open Google by firefox
    Search with Keyword    ${EMPTY}${\n}



