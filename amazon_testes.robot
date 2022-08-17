*** Settings ***
Library    SeleniumLibrary

Documentation  Essa suite testa o site da Amazon.com.br
Resource       amazon_resources.robot
Test Setup     Abrir o navegador
Test Teardown  Fechar o navegador

*** Test Cases ***
Caso de teste 01 - Acesso ao menu "Atendimento ao Cliente"
    [Documentation]  Esse teste verifica o menu Atendimento ao Cliente da Amazon.com 
    ...              e verifica a categoria "Amazon e COVID-19"
    [Tags]           menus  categorias
    Acessar a home page do site Amazon.com.br
    Acessar a opção "Atendimento ao Cliente"

Caso de teste 02 - Verifica a pagina "Atendimento ao Cliente"
    [Documentation]  Esse teste verifica o retorno da pagina de Atendimento ao Cliente
    ...              e as opções ao cliente
    [Tags]           atendimento
    Acessar a home page do site Amazon.com.br
    Acessar a opção "Atendimento ao Cliente"
    Verificar se aparece a frase "Olá. Como podemos ajudar você?"
    Verificar se o título da página fica "Ajuda - Serviço de atendimento ao cliente da Amazon"
    Verificar se aparece a opção "Amazon e COVID-19"
    
    
Caso de teste 03 - Pesquisa "Prazos de entrega"
    [Documentation]  Esse teste pesquisa o menu prazos de entrega
    [Tags]           pesquisa prazos  list_busca
    Acessar a home page do site Amazon.com.br
    Acessar a opção "Atendimento ao Cliente"
    Verificar se aparece a frase "Olá. Como podemos ajudar você?"
    Verificar se o título da página fica "Ajuda - Serviço de atendimento ao cliente da Amazon"
    Verificar se aparece a opção "Amazon e COVID-19"
    Pesquisar item na busca com o texto "Prazos de entrega"
    # Verificar o retorno da pagina explicativa