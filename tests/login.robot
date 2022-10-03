*** Settings ***
Documentation       Teste de login

Resource            ../resources/main.resource

Test Setup          Inicia teste
Test Teardown       Finaliza teste

*** Test Cases ***
Deve logar com sucesso
    Abre pagina de login
    Envia Credenciais       papito@gmail.com    vaibrasil
    Usuario logado com sucesso

Não deve logar com credenciais incorretas
    [Tags]                  inv_passw
    Abre pagina de login
    Envia Credenciais       papito@gmail.com    abc123
    Mensagem do Toaster deve ser    Credenciais inválidas, tente novamente!
    Sleep                    1    
