*** Settings ***
Resource    ../../Resource/Settings.resource
Resource    ../../Elements/Main_Elements.resource

*** Keywords ***
Dado que eu acesse o site Google
    Open Browser  ${URL}  ${Browser}
    
E acesso a opção de Login
    Click Element   ${Home.Fazer_Login}