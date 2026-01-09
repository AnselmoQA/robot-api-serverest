*** Settings ***
Library    RequestsLibrary
Variables  ../variables/config.py

*** Keywords ***
Realizar Login Com Sucesso
    Create Session    serverest    ${BASE_URL}
    ${body}=    Create Dictionary
    ...    email=${EMAIL}
    ...    password=${PASSWORD}

    ${response}=    POST On Session
    ...    serverest
    ...    /login
    ...    json=${body}

    [Return]    ${response}
