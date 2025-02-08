*** Settings ***
Library    SeleniumLibrary  


*** Keywords ***

Abrir o Navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o Navegdor
    Capture Page Screenshot
    Close Browser


