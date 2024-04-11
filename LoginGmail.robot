*** Settings ***
Library  SeleniumLibrary


*** Variables ***
#Dados gerais
${URL}  https://www.google.com
${Browser}  chrome

#Dados de acesso a Comta Google
${Email}         automatizacao.geral@gmail.com
${Senha}         Auto@123

#Elementos da página home
${Fazer_Login}          //*[@id="gb"]/div/div[2]/a/span

#Elementos da página login
${Input_Email}                   ID=identifierId
${Button_Avancar}                //*[@id="identifierNext"]/div/button/span
${Input_Senha}                   //input[@type="password"]
${Button_Avancar_Senha}          //*[@id="passwordNext"]/div/button




*** Test Cases ***
TC01 - Logar na Conta Google
    Dado que eu acesse o site Google
    E acesso a opção de Login
    E faço o login
      

*** Keywords ***

Dado que eu acesse o site Google
    Open Browser  ${URL}  ${Browser}
    
E acesso a opção de Login
    Click Element   ${Fazer_Login}

E faço o login
    Input Text                      ${Input_Email}      ${Email} 
    Click Element                   ${Button_Avancar}
    Wait Until Element Is Visible   ${Input_Senha}      10
    Input Text                      ${Input_Senha}      ${Senha}
    Click Element                   ${Button_Avancar_Senha}





