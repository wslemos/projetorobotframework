*** Settings ***
Library     SeleniumLibrary


*** Variables ***
@{MESES_ANO}    Janeiro    Fevereiro    Marco    Abril    Maio    Junho    Julho    Agosto    Setembro    Outubro    Novembro    Dezembro


*** Test Cases ***
Caso de teste mostrar log
    Exibir lista de log


*** Keywords ***
Exibir lista de log
    Log To Console    ${MESES_ANO[0]}
    Log To Console    ${MESES_ANO[1]}
    Log To Console    ${MESES_ANO[2]}
    Log To Console    ${MESES_ANO[3]}
    Log To Console    ${MESES_ANO[4]}
    Log To Console    ${MESES_ANO[5]}
    Log To Console    ${MESES_ANO[6]}
    Log To Console    ${MESES_ANO[7]}
    Log To Console    ${MESES_ANO[8]}
    Log To Console    ${MESES_ANO[9]}
    Log To Console    ${MESES_ANO[10]}
    Log To Console    ${MESES_ANO[11]}
