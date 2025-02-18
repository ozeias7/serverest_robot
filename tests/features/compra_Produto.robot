*** Settings ***

Resource            ../../Resources/ambiente.robot
Resource            ../../Resources/keywords.robot
Resource            ../step_definitions/login_steps.robot
Resource            ../step_definitions/home_steps.robot
Resource            ../step_definitions/minhasListaDeProduto_steps.robot
Resource            ../step_definitions/carrinho_steps.robot

Test Setup            Abrir o Navegador
Test Teardown         Fechar o Navegdor



*** Test Cases ***
Cenário 01: Realizar compra de produto com sucesso    
    [Tags]       login_01
    Dado que o usuario esteja na pagina de login do serverest
    Quando inserir as credenciais e logar
    E incluo o produto na cesta
    E incluo o produto no carrinho
    Então vejo o texto "Em construção aguarde"

Cenário 02: Limpar lista de produto com sucesso
    [Tags]       login_02
    Dado que o usuario esteja na pagina de login do serverest
    Quando inserir as credenciais e logar
    E incluo o produto na cesta
    E limpo a cesta de produtos

Cenário 03: Adiciono mais um item na cesta de produto com sucesso
    [Tags]       login_03
    Dado que o usuario esteja na pagina de login do serverest
    Quando inserir as credenciais e logar
    E incluo o produto na cesta
    E incluo mais um produto na cesta
   
    

