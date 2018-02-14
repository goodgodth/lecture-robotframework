*** Settings ***
Library    Collections
Library    String
Library    HttpLibrary.HTTP
Library    RequestsLibrary
Library  requests

*** Variables ***
${url}    http://data.tmd.go.th/api


*** Test Cases ***
Grab Avatar Url From Github
    Create Session    github    https://api.github.com
    ${resp}=    Get Request       github    /users/goodgodth
    Should Be Equal As Strings    ${resp.status_code}    200
    Dictionary Should Contain Key    ${resp.json()}       avatar_url
    ${avatar_url}=    Get From Dictionary    ${resp.json()}    avatar_url

TMD.GO.TH API
    Create Session    tmd    http://data.tmd.go.th/api
    &{params}=    Create Dictionary    type=json
    ${resp}=    Get Request    tmd    /Weather3Hours/V1    params=${params}
    Log Json    ${resp.content}
    Should Be Equal As Strings    ${resp.status_code}    200
    ${json}=    Set Variable    ${resp.content}
    ${header}=    Get Json Value    ${json}    /Header
    ${value}=    Parse Json    ${header}
    Log    ${value['Description']}

