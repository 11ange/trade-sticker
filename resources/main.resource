*** Settings ***
Documentation       Arquivo principal
Library             Browser
Resource            ${CURDIR}/pages/dash.resource
Resource            ${CURDIR}/pages/login.resource

*** Keywords ***
Faz o login
    Abre pagina de login
    Envia Credenciais       papito@gmail.com    vaibrasil
    Usuario logado com sucesso

Inicia teste
    New Browser     headless=false
Finaliza teste
    Take Screenshot