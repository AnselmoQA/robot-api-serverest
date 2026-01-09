*** Settings ***
Resource    ../services/login_service.robot
Resource    ../resources/keywords.robot

*** Test Cases ***
Login Com Credenciais Válidas
    ${response}=    Realizar Login Com Sucesso
    Validar Login Com Sucesso    ${response}
