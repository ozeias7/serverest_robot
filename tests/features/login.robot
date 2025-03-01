*** Settings ***

Resource            ../../Resources/ambiente.robot
Resource            ../../Resources/keywords.robot
Resource            ../step_definitions/login_steps.robot
Resource            ../step_definitions/home_steps.robot

Test Setup            Abrir o Navegador
Test Teardown         Fechar o Navegdor



*** Test Cases ***
Cenário 01: Validando cenário de login valido
    [Tags]       login_01
    Dado que o usuario esteja na pagina de login do serverest
    Quando inserir as credenciais e logar
    E vejo o texto "Serverest Store"
    Então saio do Serverest

Cenário 02: Validando cenário de login invalido
    [Tags]       login_02
    Dado que o usuario esteja na pagina de login do serverest
    Quando inserir as credenciais invalidas e logar
    E vejo o texto "Email e/ou senha inválidos"
    
Cenário 03: Validando cenário usuario valido e senha invalida
    [Tags]       login_03
    Dado que o usuario esteja na pagina de login do serverest
    Quando inserir usuario valido e senha invalida
    E vejo o texto "Email e/ou senha inválidos"

Cenário 04: Validando cenário usuario invalido e senha valida
    [Tags]       login_04
    Dado que o usuario esteja na pagina de login do serverest
    Quando inserir usuario invalido e senha valida
    E vejo o texto "Email e/ou senha inválidos"
