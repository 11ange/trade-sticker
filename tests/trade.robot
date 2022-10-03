*** Settings ***
Documentation       Teste de negociação de figurinhas da copa

Resource            ../resources/main.resource

Test Setup          Inicia teste
Test Teardown       Finaliza teste

*** Test Cases ***
Deve negociar a figurinha do neymar legend
    Faz o login
    Busca figurinha         legend
    Sleep                   5
    Clica na figurinha      Neymar Jr
    Clica botao Zapzap
    Valida mensagem Zapzap  Neymar Jr