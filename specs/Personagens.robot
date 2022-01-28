*** Settings ***
Documentation     Teste da API Fake da Marvel
Resource          ../resources/base.robot
Suite Setup       Setar client_key     julianasc72@gmail.com





*** Test Cases ***
Cenário 01: Buscar todos os personagens
    Buscar todos personagens
