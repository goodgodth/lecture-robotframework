*** Settings ***
Library    Selenium2Library
Library    BuiltIn


*** Variables ***
${login_username}    //*[@id="membEmailLogin"]
${login_password}    //*[@id="membPasswordLogin"]
${login_button}      //*[@id="btnLogin"]

${reg_username}    //*[@id="membUserName"]
${reg_email}    //*[@id="membEmail"]
${reg_password}    //*[@id="membPassword"]
${reg_button}    //*[@id="memberLoginButton"]

${remember_system_checkbox}    //*[@id="rememLogin"]

${i_want_get_new_promotion}    //*[@id="membSubscrip"]
${i_accept_condition}    //*[@id="membCondition"]

${error_reg_email}    //input[contains(@id,"membEmail") and contains(@name,"membEmail") and contains(@style,"border: 1px solid rgb(169, 68, 66);") ]


*** Keywords ***
Login Page - Fill Login
    [Arguments]     ${username}    ${password}
    Input Text    ${login_username}    ${username}
    Input Text    ${login_password}    ${password}

Login Page - Click Login Button
    Click Element    ${login_button}

Login Page - Login Remember to System
    Select Checkbox    ${remember_system_checkbox}


Login Page - Fill Register
    [Arguments]  ${login_name}    ${email}    ${password}
    Input Text    ${reg_username}    ${login_name}
    Input Text    ${reg_email}    ${email}
    Input Text    ${reg_password}    ${password}

Login Page - Fill Register Check i want get new promotion
    Select Checkbox    ${i_want_get_new_promotion}

Login Page - Fill Register Check i accept condition
    Select Checkbox    ${i_accept_condition}

Login Page - Fill Register Button
    Click Element    ${reg_button}

Login Page - Verify Error Please fill email
    ${txt}=    Get Text    //*[@id="alertEmail"]/span
    Should Be Equal As Strings    ${txt}    กรุณากรอกอีเมล์



Login Page - Verify Error Please Fill email is have border and color
    Wait Until Page Contains Element    ${error_reg_email}
