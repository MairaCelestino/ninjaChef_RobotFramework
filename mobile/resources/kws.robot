*** Settings ***
Documentation       Palavras chaves do projeto

*** Keywords ***
Dado que desejo comer "${pratos}"
    Set Test Variable    ${pratos}

Quando submeto meu email "${email}"
    Wait Until Page Contains        Buscar Prato    10
    Input Text      accessibility_id=emailInput     ${email}
    Input Text      accessibility_id=plateInput     ${pratos}
    Click Text      Buscar Prato

               
Entao devo ver a lista de pratos por tipo
    Wait Until Page Contains    Fome de ${pratos}