*** Settings ***
Library    Collections

*** Keywords ***
Validar Login Com Sucesso
    [Arguments]    ${response}
    Should Be Equal As Numbers    ${response.status_code}    200
    Dictionary Should Contain Key    ${response.json()}    authorization
