*** Settings ***
Documentation   Página de Login
Library         Browser


*** Keywords ***
Abre pagina de login
    New Page        https://trade-sticker-dev.vercel.app

Envia Credenciais
    [Arguments]     ${email}    ${senha}
    Fill Text       css=input[name=email]       ${email} 
    Fill Text       css=input[name=password]    ${senha}
    Click           css=button >> text=Entrar

Mensagem do Toaster deve ser
    [Arguments]        ${mensagem_esperada}
    Sleep                   1
    ${localizador}
    ...    Set Variable
    ...    css=.Toastify__toast-body div >> text=${mensagem_esperada}
    Wait For Elements State     ${localizador}  visible    3
    # ${temp}         Get Page Source
    # Log             ${temp}