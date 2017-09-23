*** Settings ***
Library    Selenium2Library

*** Keywords ***
Open Web
    Open Browser    https://v4-alpha.getbootstrap.com/components/forms/    chrome
    Wait Until Element Is Visible    //*[@id="carbonads"]

*** Test Cases ***
Test1
    [Tags]    DEBUG
    [Documentation]   Test Google
    Open Web
    Input Text    xpath=//*[@id="exampleInputEmail1"]    goodgod.th@gmail.com
    Input Text    //*[@id="exampleInputPassword1"]    goodgod.th@gmail.com
    Select From List by Label    id=exampleSelect1    3
    Select From List by Label    //*[@id="exampleSelect2"]   1
    Select From List by Label    //*[@id="exampleSelect2"]   3
    Select From List by Label    //*[@id="exampleSelect2"]   5
    Input Text    //*[@id="exampleTextarea"]    This is a book${\n}Book${SPACE}${SPACE}${SPACE}${SPACE}kko

    #Next Lesson
    #Choose File    //*[@id="exampleInputFile"]    ${ABSOLUTE_PATH}/18891886_1074470549321057_4170814846182489955_o.jpg

    Select Radio Button    optionsRadios    option2

    #Example
    #Select Radio Button    optionsRadios    option3

    Select CheckBox    //div[@class='form-check']/label/input[@type="checkbox" and @class="form-check-input"]
    Sleep    2s
    UnSelect CheckBox    //div[@class='form-check']/label/input[@type="checkbox" and @class="form-check-input"]



    #Click Element    xpath=/html/body/div[2]/div/div[2]/div[1]/form/button


    ${value}=    Get Text    //*[@id='emailHelp']
    log to console    ${\n}${value}${\n}

    ${value}=    Get Value    xpath=//*[@id="exampleInputEmail1"]
    log to console    ${value}${\n}

    ${value}=    Get Element Attribute    //*[@id="formGroupExampleInput"]@placeholder
    log to console    ${value}${\n}


    ${value}=    Get Selected List Label    //*[@id="exampleSelect1"]
    log to console    ${value}${\n}

    ${value}=    Get Selected List Labels    //*[@id="exampleSelect2"]
    log to console    ${value}${\n}


    ${value}=    Get Matching Xpath Count    //button[@type="submit"]
    log to console    ${value}${\n}

    ${value}=    Get Location
    log to console    ${value}${\n}

    Close Browser