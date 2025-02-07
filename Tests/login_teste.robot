*** Settings ***

Resource            ../Resources/ambiente.robot
Resource            ../Resources/resources.robot
Resource            ../Pages/login_Page.robot
Resource            ../Pages/home_Page.robot

Test Setup            Abrir o Navegador
Test Teardown         Fechar o Navegdor



*** Test Case ***
Cenário 01: Validando cenário de login valido
    [Tags]       login_01
    Dado que o usuario esteja na pagina de login do serverest
    Quando inserir as credenciais e logar
    E vejo o texto "Serverest Store"
    Então saio do Serverest

# Cenário 02: Validando cenário de login invalido
#     [Tags]       login_02
#     Dado que o usuario esteja na pagina de login do serverest
#     Quando inserir as credenciais invalidas e logar
#     Então devo ver a mensagem de erro

# Cenário 03: Validando cenário usuario valido e senha invalida
#     [Tags]       login_03
#     Dado que o usuario esteja na pagina de login do serverest
#     Quando inserir usuario valido e senha invalida
#     Então devo ver a mensagem de erro

# Cenário 04: Validando cenário usuario invalido e senha valida
#     [Tags]       login_04
#     Dado que o usuario esteja na pagina de login do serverest
#     Quando inserir usuario invalido e senha valida
#     Então devo ver a mensagem de erro
