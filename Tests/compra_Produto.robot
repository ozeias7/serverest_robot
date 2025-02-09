*** Settings ***

Resource            ../Resources/ambiente.robot
Resource            ../Resources/resources.robot
Resource            ../Pages/login_Page.robot
Resource            ../Pages/home_Page.robot
Resource            ../Pages/minhasListaDeProduto_Page.robot
Resource            ../Pages/carrinho_Page.robot

Test Setup            Abrir o Navegador
Test Teardown         Fechar o Navegdor



*** Test Case ***
Cenário 01: Realizar compra de produto com sucesso
    [Tags]       login_01
    Dado que o usuario esteja na pagina de login do serverest
    Quando inserir as credenciais e logar
    E incluo o produto na cesta
    E incluo o produto no carrinho
    Então vejo o texto "Em construção aguarde"

Cenário 02: Limpar lista de produto com sucesso
    [Tags]       login_01
    Dado que o usuario esteja na pagina de login do serverest
    Quando inserir as credenciais e logar
    E incluo o produto na cesta
    E limpo a cesta de produtos

Cenário 03: Adiciono mais um item na cesta de produto com sucesso
    [Tags]       login_01
    Dado que o usuario esteja na pagina de login do serverest
    Quando inserir as credenciais e logar
    E incluo o produto na cesta
    E incluo mais um produto na cesta
   
    

