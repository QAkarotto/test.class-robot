*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${BASE_URL}    https://serverest.dev 

*** Keywords ***
Enviar requisição de login
    [Arguments]    ${email}    ${password}    ${expected_status}
    
    ${body}    Create Dictionary
    ...             email=${email}
    ...             password=${password}
    
    ${response}    POST    url=${BASE_URL}/login
    ...                    json=${body}
    ...                    expected_status=${expected_status}
    
    Set Test Variable   ${request_response}   ${response.json()}

Validar mensagem
    [Arguments]    ${request_response}    ${message}
    
    Dictionary Should Contain Item
    ...    dictionary=${request_response}
    ...    key=message
    ...    value=${message}