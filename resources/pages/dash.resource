*** Settings ***
Documentation   Pagina Dashboard
Library         Browser


*** Keywords ***
Usuario logado com sucesso
    ${header_login}
    ...         Set Variable
    ...         Aquela figurinha incrível a um clique de distância.
    Get Text    css=.header-content strong    equal     ${header_login}

Busca figurinha
    [Arguments]     ${nomeFigurinha}
    Fill Text       input[placeholder^=Busque]    ${nomeFigurinha}
    Click           css=button >> text=Buscar

Clica na figurinha
    [Arguments]    ${figurinha}
    Click            xpath=//img[@alt="${figurinha}"]/..

Clica botao Zapzap
    Click        css=button >> text=Entrar em contato

Valida mensagem Zapzap
    [Arguments]    ${figurinha}
    ${mensagem}    Set Variable
    ...    Oi, achei o seu contato no Trade Sticker. Estou interessado(a) na figurinha do ${figurinha}, bora negociar?
    
    Switch Page    NEW
    Wait For Elements State    css=p >> text=${mensagem}    visible    10