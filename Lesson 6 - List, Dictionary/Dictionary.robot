*** Settings ***
Library           Collections

*** Test Cases ***
Create_Dictionary_Test
    [Documentation]    Creates and returns a dictionary based on given items
    Comment    Create a Dictionary Object
    ${MyDictionary}=    Create Dictionary
    Comment    Adds the given key_value_pairs and items to the dictionary
    Set To Dictionary    ${MyDictionary}    Foo1    Value1
    Set To Dictionary    ${MyDictionary}    Foo2    Value2
    Set To Dictionary    ${MyDictionary}    Foo3    Value3
    Set To Dictionary    ${MyDictionary}    Foo4    Value4
    Log to console    Logs the size and contents of the dictionary using given level.
    Log Dictionary    ${MyDictionary}
    Log to console    ${MyDictionary}


    Log to console    Copy Existing Dictionary to a new Dictionary
    ${MyDictionary2}=    Copy Dictionary    ${MyDictionary}
    Log Dictionary    ${MyDictionary2}
    Log to console    ${MyDictionary2}


    Log to console    Returns keys of the given dictionary
    ${Keys}=    Get Dictionary Keys    ${MyDictionary}
    Log    ${Keys}
    Log to console    ${Keys}

    Log to console    Returns a value from the given dictionary based on the given key
    ${keyValue}=    Get From Dictionary    ${MyDictionary}    Foo2
    Log to console    ${keyValue}

    Comment    Removes the given keys from the dictionary.
    Remove From Dictionary    ${MyDictionary}    Foo1
    Log Dictionary    ${MyDictionary}


    Comment    Keeps the given keys in the dictionary and removes all other.
    Keep In Dictionary    ${MyDictionary}    Foo4
    Log Dictionary    ${MyDictionary}
    Dictionary Should Contain Key    ${MyDictionary}    Foo4





Create_Dictionary_Test
    [Documentation]    Creates and returns a dictionary based on given items
    Comment    Create a Dictionary Object
    ${MyDictionary}=    Create Dictionary
    Comment    Adds the given key_value_pairs and items to the dictionary
    Set To Dictionary    ${MyDictionary}    Foo1    Value1
    Set To Dictionary    ${MyDictionary}    Foo2    Value2

    ${Keys}=    Get Dictionary Keys    ${MyDictionary}
    Log to console    ${Keys}

    ${Value}=    Get From Dictionary    ${MyDictionary}    Foo2
    Log to console    ${keyValue}

    Remove From Dictionary    ${MyDictionary}    Foo1
    Log Dictionary    ${MyDictionary}

    Log Dictionary    ${MyDictionary}
    Dictionary Should Contain Key    ${MyDictionary}    Foo4