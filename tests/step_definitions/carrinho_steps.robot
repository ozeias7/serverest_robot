*** Settings ***
Library    SeleniumLibrary  
Library    String

Resource            ../../Resources/ambiente.robot
Resource            ../../Resources/keywords.robot
Resource            ../step_definitions/login_steps.robot
Resource            ../step_definitions/home_steps.robot


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
