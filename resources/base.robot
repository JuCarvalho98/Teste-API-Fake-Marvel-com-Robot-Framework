*** Settings ***
Documentation      Base para ações de teste na API
Library            RequestsLibrary


*** Variables ***
${baseUrl}         http://marvel.qaninja.academy/   


*** Keywords ***
Setar client_key   
    [Arguments]    ${email}    
    &{usuario}    Create Dictionary        email=${email}

    ${resposta}    POST On Session          
    ...            ${baseUrl}/accounts
    ...            json=&{usuario}

    ${client_key}        Set Variable        ${response.json()}[client_key]
    &{HEADERS}           Create Dictionary   client_key=${client_key} 
    Set Suite Variable   &{HEADERS}

Buscar todos personagens
    ${resposta_get}        Get On Session    APIMarvel    ${baseUrl}/characters
    Set Suite Variable      ${resposta_get}