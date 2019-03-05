*** Settings ***
Documentation    Basic Search Test
Library          base/SearchKeywords.py

*** Variables ***
@{EMPTY LIST}

*** Test Cases ***
Search Google
    [Tags]         base

    ${resp}=    SearchKeywords.search_on_google     automox

    Log To Console  ${resp.text}

