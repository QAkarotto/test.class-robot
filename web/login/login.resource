*** Settings ***
Library    Browser

*** Keywords ***

Acessar a página de login do ServeRest
    New Browser                 browser=firefox
    New Page                    url=https://front.serverest.dev/login

Digitar email "${EMAIL}" 
    Fill Text                  selector=input[data-testid="email"]    txt=${EMAIL}

Digitar senha "${SENHA}"
    Fill Text                  selector=input[data-testid="senha"]   txt=${SENHA}


Clicar no botão entrar
    Click                      button[data-testid="entrar"]

Validar que o elemento Home está visível
    Take Screenshot
    Wait For Elements State    selector=a[data-testid="home"]    state=Visible
    
Validar que a mensagem de erro é exibida
    Take Screenshot
    Wait For Elements State    selector=div[role="alert"]    state=Visible  