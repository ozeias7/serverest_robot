*** Settings ***
Library    SeleniumLibrary  
Library    String


Resource            ../../Resources/ambiente.robot
Resource            ../../Resources/keywords.robot
Resource            ../step_definitions/login_steps.robot



*** Variables ***

${BTN_LOGOUT}                  //button[@data-testid='logout'][contains(.,'Logout')]
${CAMP_PESQUISAR_PRODUTO}      //input[contains(@class,'form-control my-5 mx-3 my-sm-0')]
${CAMP_PESQUISAR}              //button[@class='btn btn-primary my-2 my-sm-0'][contains(.,'Pesquisar')]
${PRO_ADICIONAR_LISTA}         //button[@type='button'][contains(.,'Adicionar a lista')]

*** Keywords ***
  
Então saio do Serverest
    Wait Until Element Is Visible    ${BTN_LOGOUT}
    Capture Page Screenshot
    Click Element    ${BTN_LOGOUT}

E incluo o produto na cesta
    Wait Until Element Is Visible    ${CAMP_PESQUISAR_PRODUTO}
    Input Text                       ${CAMP_PESQUISAR_PRODUTO}              Logitech MX Vertical
    Wait Until Element Is Visible    ${CAMP_PESQUISAR}
    Click Element                    ${CAMP_PESQUISAR}
    Wait Until Element Is Visible    ${PRO_ADICIONAR_LISTA}
    Click Element                    ${PRO_ADICIONAR_LISTA}
