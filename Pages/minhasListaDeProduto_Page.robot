*** Settings ***
Library    SeleniumLibrary  
Library    String

Resource            ../Resources/ambiente.robot
Resource            ../Resources/resources.robot
Resource            ../Pages/login_Page.robot
Resource            ../Pages/home_Page.robot




*** Variables ***

${BTN_PAGINA_INICAL}                 //button[@data-testid='paginaInicial'][contains(.,'Página Inicial')]
${BTN_ADICIONAR_CARRINHO}            //button[@data-testid='adicionar carrinho'][contains(.,'Adicionar no carrinho')]
${BTN_LIMPAR_CARRINHO}               //button[@type='button'][contains(.,'Limpar Lista')]
${BTN_LOGOUT}                        //button[@data-testid='logout'][contains(.,'Logout')]
${BTN_INCLUR_MAIS_PRODUTO_CESTA}     //button[@type='button'][contains(.,'+')]

*** Keywords ***

E incluo o produto no carrinho
    Wait Until Element Is Visible    ${BTN_ADICIONAR_CARRINHO}
    Click Element                    ${BTN_ADICIONAR_CARRINHO}

 E limpo a cesta de produtos
    Wait Until Element Is Visible    ${BTN_LIMPAR_CARRINHO}
    Click Element                    ${BTN_LIMPAR_CARRINHO}

E incluo mais um produto na cesta
     Wait Until Element Is Visible   ${BTN_INCLUR_MAIS_PRODUTO_CESTA}
    Click Element                    ${BTN_INCLUR_MAIS_PRODUTO_CESTA}
    Capture Page Screenshot
    Sleep    2