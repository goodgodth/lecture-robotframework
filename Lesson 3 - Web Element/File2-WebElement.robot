*** Settings ***
Library    Selenium2Library

*** Keywords ***
Open Web Demo
    Open Browser    http://localhost/sufee/    ff

*** Test Cases ***
Test1
    [Tags]    DEBUG
    [Documentation]   Test Google
    #Open Browser    http://localhost/sufee/forms-basic.html    chrome
    Open Web Demo
    Click Element    //*[@id="main-menu"]/ul/li[4]/a
    Click Element    //*[@id="main-menu"]/ul/li[4]/ul/li[1]/a
    Input Text    //*[@id="cc-pament"]    999.99
    Input Text    //*[@id="cc-name"]    Chris Evan
    Input Text    //*[@id="cc-number"]    394801901023201938012
    Input Text    //*[@id="cc-exp"]    12/20
    Input Text    //*[@id="x_card_code"]    987
    Input Text    //*[@id="text-input"]    Text Input
    Input Text    //*[@name="email-input"]    email@email.com
    Input Text    //*[@name="password-input"]    inputpassword
    Input Text    //*[@id="textarea-input"]    abcdefg
    select from list by value    //*[@id="select"]    1
    select from list by label    //*[@id="selectLg"]    Option #3
    select from list by label    //*[@id="SelectLm"]    Option #5

    select from list by label    //*[@id="multiple-select"]    Option #5
    select from list by label    //*[@id="multiple-select"]    Option #3
    select from list by label    //*[@id="multiple-select"]    Option #7

    Select Radio Button    radios    option2

    Select Radio Button    inline-radios    option3

    select checkbox    //*[@id="checkbox3"]

    select checkbox    //*[@id="inline-checkbox1"]
    select checkbox    //*[@id="inline-checkbox3"]

    Sleep    2s

    unselect checkbox    //*[@id="inline-checkbox1"]

    Choose File    //*[@id="file-input"]    /Users/arrukkachen/Documents/pythonproject/lecture-robotframework/Lesson 3 - Web Element/18891886_1074470549321057_4170814846182489955_o.jpg


    Input Text      //*[@id="exampleInputName2"]    Thisismyname
    Input Text      //*[@id="exampleInputEmail2"]    thisisemail@email.com
    click element    //*[@id="exrest"]

    Input Text      //*[@id="exampleInputName2"]    Thisismyname
    Input Text      //*[@id="exampleInputEmail2"]    thisisemail@email.com
    click element    //*[@id="exsubmit"]


#    Input Text    //*[@id="exampleInputPassword1"]    goodgod.th@gmail.com
#    Select From List by Label    id=exampleSelect1    3
#    Select From List by Label    //*[@id="exampleSelect2"]   1
#    Select From List by Label    //*[@id="exampleSelect2"]   3
#    Select From List by Label    //*[@id="exampleSelect2"]   5
#    Input Text    //*[@id="exampleTextarea"]    This is a book${\n}Book${SPACE}${SPACE}${SPACE}${SPACE}kko
#
#    #Next Lesson
#    Choose File    //*[@id="exampleInputFile"]    18891886_1074470549321057_4170814846182489955_o.jpg
#
#    Select Radio Button    optionsRadios    option2
#
#    #Example
#    #Select Radio Button    optionsRadios    option3
#
#    Select CheckBox    //div[@class='form-check']/label/input[@type="checkbox" and @class="form-check-input"]
#    Sleep    2s
#    UnSelect CheckBox    //div[@class='form-check']/label/input[@type="checkbox" and @class="form-check-input"]
#
#
#    ${value}=    Get Text    //*[@id='emailHelp']
#    log to console    ${\n}${value}${\n}
#
#    ${value}=    Get Value    xpath=//*[@id="exampleInputEmail1"]
#    log to console    ${value}${\n}
#
#    ${value}=    Get Element Attribute    //*[@id="formGroupExampleInput"]@placeholder
#    log to console    ${value}${\n}
#
#
#    ${value}=    Get Selected List Label    //*[@id="exampleSelect1"]
#    log to console    ${value}${\n}
#
#    ${value}=    Get Selected List Labels    //*[@id="exampleSelect2"]
#    log to console    ${value}${\n}
#
#
#    ${value}=    Get Matching Xpath Count    //button[@type="submit"]
#    log to console    ${value}${\n}
#
#    ${value}=    Get Location
#    log to console    ${value}${\n}
#
#    Click Element    xpath=/html/body/div[2]/div/div[2]/div[1]/form/button
#
#    #Close Browser
#
#
#
#    ${str} =	Remove String	 Robot Framework	work
#    Should Be Equal As String    ${str}    Robot Frame
#
#    ${str} =	Replace String	Hello, world!	world	tellus
#    Should Be Equal As String	${str}	 Hello, tellus!
#
#    @{words} =	Split String	${string}