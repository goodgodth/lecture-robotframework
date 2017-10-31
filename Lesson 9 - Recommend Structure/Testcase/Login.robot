*** Settings ***
Library    Selenium2Library
Resource    ../Keywords/common.robot
Resource    ../Keywords/LoginPage.robot


*** Test Cases ***
Test1
    [Documentation]   Register without email
    [Tags]    email    register
    Open URL by Default
    Login Page - Fill Register    extosoft    ${EMPTY}    password
    Login Page - Fill Register Check i accept condition
    Login Page - Fill Register Check i want get new promotion
    Login Page - Fill Register Button
    Login Page - Verify Error Please fill email
    Login Page - Verify Error Please Fill email is have border and color



Test2
    [Documentation]   Register without username
    [Tags]    username    register
    Open URL by Default
    Login Page - Fill Register    ${EMPTY}    thai@thailand.com    password
    Login Page - Fill Register Check i accept condition
    Login Page - Fill Register Check i want get new promotion
    Login Page - Fill Register Button


Test3
    [Documentation]   Register without password
    [Tags]    password    register    High
    Open URL by Default
    Login Page - Fill Register    extosoft    thai@thailand.com    ${EMPTY}
    Login Page - Fill Register Check i accept condition
    Login Page - Fill Register Check i want get new promotion
    Login Page - Fill Register Button


Test4
    [Documentation]   Register invalid email
    [Tags]    email    register    High
    Open URL by Default
    Login Page - Fill Register    extosoft    thailand.com    password
    Login Page - Fill Register Check i accept condition
    Login Page - Fill Register Check i want get new promotion
    Login Page - Fill Register Button