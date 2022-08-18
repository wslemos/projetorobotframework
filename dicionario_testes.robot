*** Variables ***
&{MESES_ANO}    Janeiro=31    Fevereiro=28    Março=30    Abril=30    Maio=31    Junho=30    Julho=31    Agosto=30    Setembro=31    Outubro=30    Novembro=30    Dezembro=31


*** Test Cases ***
Caso de teste mostrar log
    Exibir dicionario de log


*** Keywords ***
Exibir dicionario de log
    Log To Console        No mes 01 tem ${MESES_ANO.Janeiro} dias  
    Log To Console        No mes 02 tem ${MESES_ANO.Fevereiro} dias
    Log To Console        No mes 03 tem ${MESES_ANO.Março} dias
    Log To Console        No mes 04 tem ${MESES_ANO.Abril} dias
    Log To Console        No mes 05 tem ${MESES_ANO.Maio} dias
    Log To Console        No mes 06 tem ${MESES_ANO.Junho} dias
    Log To Console        No mes 07 tem ${MESES_ANO.Julho} dias
    Log To Console        No mes 08 tem ${MESES_ANO.Agosto} dias
    Log To Console        No mes 09 tem ${MESES_ANO.Setembro} dias
    Log To Console        No mes 10 tem ${MESES_ANO.Outubro} dias
    Log To Console        No mes 11 tem ${MESES_ANO.Novembro} dias
    Log To Console        No mes 12 tem ${MESES_ANO.Dezembro} dias