*** Settings ***
Resource    login.resource

*** Test Cases ***
Caso de teste 1: Login com sucesso
    [Documentation]    Esse teste verifica o login com sucesso na aplicação ServeRest
    [Tags]    login    success
    Acessar a página de login do ServeRest
    Digitar email "qakarotto@gmail.com"
    Digitar senha "teste"
    Clicar no botão entrar
    Validar que o elemento Home está visível 

Caso de teste 2: Login com falha
    [Documentation]    Esse teste verifica o login com falha na aplicação ServeRest
    [Tags]    login    fail
    Acessar a página de login do ServeRest
    Digitar email "qakarotto@gmail.com"
    Digitar senha "senhaerrada"
    Clicar no botão entrar
    Validar que a mensagem de erro é exibida