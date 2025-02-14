*** Settings ***
Library            SeleniumLibrary  
Library            String


Resource            ../../Resources/ambiente.robot
Resource            ../../Resources/keywords.robot
Resource            ../step_definitions/home_steps.robot

*** Variables ***

${TEXTO_LOGIN}         //h1[@class='font-robot'][contains(.,'Login')]
${EMAIL}               //input[contains(@name,'email')]
${SENHA}               //input[contains(@name,'password')]
${BTN_ENTRAR}          //button[@data-testid='entrar'][contains(.,'Entrar')]


*** Keywords ***

Dado que o usuario esteja na pagina de login do serverest
   Go To    ${URL_DEV}
   Wait Until Element Is Visible    ${TEXTO_LOGIN}
   

Quando inserir as credenciais e logar
    Wait Until Element Is Visible    ${EMAIL}
    Input Text                       ${EMAIL}           ozeias.silva@gmail.com
    Wait Until Element Is Visible    ${SENHA}
    Input Text                       ${SENHA}           741852
    Wait Until Element Is Visible    ${BTN_ENTRAR}
    Click Element                    ${BTN_ENTRAR}

E vejo o texto "${TEXTO}"
    Wait Until Page Contains         ${TEXTO}
    Capture Page Screenshot


Quando inserir as credenciais invalidas e logar
    Wait Until Element Is Visible     ${EMAIL}
    Input Text                        ${EMAIL}               ozeias.te@gmail.com
    Wait Until Element Is Visible     ${SENHA}
    Input Text                        ${SENHA}               123456
    Wait Until Element Is Visible     ${BTN_ENTRAR}
    Click Element                     ${BTN_ENTRAR}

 Quando inserir usuario valido e senha invalida
    Wait Until Element Is Visible      ${EMAIL}
    Input Text                         ${EMAIL}              ozeias.nnascimento@gmail.com
    Wait Until Element Is Visible      ${SENHA}
    Input Text                         ${SENHA}              123456
    Wait Until Element Is Visible      ${BTN_ENTRAR}
    Click Element                      ${BTN_ENTRAR}
    
Quando inserir usuario invalido e senha valida
     Wait Until Element Is Visible      ${EMAIL}
    Input Text                          ${EMAIL}              ozeias.teste@gmail.com
    Wait Until Element Is Visible       ${SENHA}
    Input Text                          ${SENHA}              741852
    Wait Until Element Is Visible       ${BTN_ENTRAR}
    Click Element                       ${BTN_ENTRAR}
    
