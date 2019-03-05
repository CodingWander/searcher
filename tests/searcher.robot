*** Settings ***
Documentation    Basic Search Test
Library          ../base/SearchKeywords.py
Library	         Collections
Library	         RequestsLibrary

*** Variables ***
@{EMPTY LIST}

*** Test Cases ***
Search Google
    [Tags]         base

    ${resp}=    SearchKeywords.search_on_google     automox

    Log To Console  Seaching Google gave a status code: ${resp.status_code}
