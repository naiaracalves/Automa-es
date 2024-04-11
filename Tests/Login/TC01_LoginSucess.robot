*** Settings ***
Resource    ../../Steps/Main_Steps.robot

*** Test Cases ***
TC01 - Logar na Conta Google
    Dado que eu acesse o site Google
    E acesso a opção de Login
    E faço o login