*** Settings ***
Library     Selenium2Library
Resource    ../Configuration/${ENV}/Service.robot



*** Keywords ***
Open URL by Default
    Open Browser    ${url}    ${BROWSER}