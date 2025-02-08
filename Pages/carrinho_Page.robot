*** Settings ***
Library    SeleniumLibrary  
Library    String

Resource            ../Resources/ambiente.robot
Resource            ../Resources/resources.robot
Resource            ../Pages/login_Page.robot
Resource            ../Pages/home_Page.robot


*** Variables ***
${BTN_LOGOUT}                    //button[@data-testid='logout'][contains(.,'Logout')]


*** Keywords ***

Então saio do Serverest
    Wait Until Element Is Visible    ${BTN_LOGOUT}
    Capture Page Screenshot
    Click Element                    ${BTN_LOGOUT}

Então vejo o texto "${TEXTO}"
    Wait Until Page Contains         ${TEXTO}
    Capture Page Screenshot
