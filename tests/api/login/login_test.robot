*** Settings ***
Resource    login.resource

*** Test Cases ***
Caso de Teste 1: Login com sucesso
    Enviar requisição de login    email=qakarotto@gmail.com    password=teste    expected_status=200
    Validar mensagem              request_response=${request_response}    message=Login realizado com sucesso  
    
Caso de Teste 2: Login com falha
    Enviar requisição de login    email=qakarotto@gmail.com    password=senhaerrada    expected_status=401
    Validar mensagem              request_response=${request_response}    message=Email e/ou senha inválidos