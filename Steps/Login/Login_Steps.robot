*** Settings ***
Resource    ../../Resource/Settings.resource
Resource    ../../Elements/Main_Elements.resource

*** Keywords ***
E faço o login
    Input Text                      ${Login.Input_Email}      ${Email} 
    Click Element                   ${Login.Button_Avancar}
    Wait Until Element Is Visible   ${Login.Input_Senha}      10
    Input Text                      ${Login.Input_Senha}      ${Senha}
    Click Element                   ${Login.Button_Avancar_Senha}