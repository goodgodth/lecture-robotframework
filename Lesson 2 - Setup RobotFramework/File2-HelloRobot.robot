*** Settings ***
Library    Selenium2Library
Test Setup    Open Google
#Test Teardown  Close Browser




*** Keywords ***
Open Google
    Open Browser    http://www.google.com    chrome
    Wait Until Element Is Visible    //*[@id="lst-ib"]

Fill Keyword to Search
    [Arguments]    ${keyword}
    Input Text    //*[@id="lst-ib"]    ${keyword}

Click Google Search Button
    Click Element    //*[@name="btnK"]

Verify Google Found Search Result
    Wait Until Element Is Visible   //*[@id="ires"]
    Page Should Contain    การค้นหาที่เกี่ยวข้องกับ kamenrider
    Page Should Contain Element    //*[@id="brs"]/g-section-with-header/div[2]
    Page Should Contain Element    //*[@class="card-section"]


*** Test Cases ***
Test1
    [Tags]    DEBUG
    [Documentation]   Test Google
    Fill Keyword to Search    kamenrider
    Click Google Search Button


