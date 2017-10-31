*** Settings ***
Library           Collections

*** Test Cases ***
Create List Test Case
    [Tags]    CollectionsTest
    @{MyList}=    Create List    item1    item2    item3
    Append To List    ${MyList}    item4
    Log List    ${MyList}
    List Should Contain Value    ${MyList}    item4


Append To List Test
    [Documentation]    Adds values to the end of list
    @{MyList}=    Create List
    Append To List    ${MyList}    a
    Append To List    ${MyList}    b
    Append To List    ${MyList}    c
    Append To List    ${MyList}    d
    Append To List    ${MyList}    abcd
    Log List    ${MyList}
    List Should Contain Value    ${MyList}    abcd

Combine Lists Test
    [Documentation]    Combines the given lists together and returns the result. Given list does not get changed.
    @{a}=    Create List    a    b    c
    @{b}=    Create List    d    e    f
    @{ab}=    Combine Lists    ${a}    ${b}
    Log List    ${ab}
    List Should Contain Value    ${ab}    a

Convert To List Test
    ${tup1}    Set Variable    a    b    c    d    sm
    @{MyList}=    Convert To List    ${tup1}
    Log List    ${MyList}
    ${ListLength}=    Get Length    ${MyList}
    Log    'List Size is : ' ${ListLength}
    List Should Contain Value    ${MyList}    sm

Copy List Test
    [Documentation]    Returns a copy of the given list
    @{MyList}=    Create List    Foo1    Foo2    Foo3
    Log List    ${MyList}
    @{CopiedList}=    Copy List    ${MyList}
    Log List    ${CopiedList}
    List Should Contain Value    ${CopiedList}    Foo3

Count Values In List Test
    [Documentation]    Returns the number of occurrences of the given value in list.
    @{MyList}=    Create List    1
    Append To List    ${MyList}    2
    Append To List    ${MyList}    2
    Append To List    ${MyList}    3
    ${count}=    Count Values In List    ${MyList}    2
    Log    ${count}
    Should Be Equal    '${count}'    '2'

Copy List Test
    [Documentation]    Returns a copy of the given list
    @{MyList}=    Create List    Foo1    Foo2    Foo3
    Log List    ${MyList}
    @{CopiedList}=    Copy List    ${MyList}
    Log List    ${CopiedList}
    List Should Contain Value    ${CopiedList}    Foo3







