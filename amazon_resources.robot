*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                 https://www.amazon.com.br/
${MENU_ATENDIMENTO_AO_CLIENTE}    //a[@href='/gp/help/customer/display.html?nodeId=508510&ref_=nav_cs_help'][contains(.,'Atendimento ao Cliente')]
${MENSAGEM_BOAS_VINDAS}    //div[@class='a-section a-spacing-extra-large a-spacing-top-extra-large ss-landing-container'][contains(.,'Olá. Como podemos ajudar você?')]
${TITULO}    Ajuda - Serviço de atendimento ao cliente da Amazon
${MSG_COVID}  //span[@class='a-list-item a-color-secondary'][contains(.,'Impactos em pedidos e entregas')]
${BOTAO_COVID}  //a[@href='/gp/help/customer/display.html?ref_=cs_hlp_gtwy_ss_covid&nodeId=GDFU3JS5AL6SYHRD']
${BUSCA_ATENDIMENTO}   //input[contains(@type,'search')]
${PAGINA_HOME}  //a[contains(@class,'nav-logo-link nav-progressive-attribute')]
${BOTAO_EXCLUIR}    //input[@value='Excluir']
${PRODUTO_ESCOLHIDO}    //img[@data-image-index='1']
${BOTAO_IR_PARA_CARRINHO}  //span[@class='a-button-inner'][contains(.,'Ir para o carrinho')]


*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window
    
Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ATENDIMENTO_AO_CLIENTE}

Acessar a opção "Atendimento ao Cliente"
    Click Element    locator=${MENU_ATENDIMENTO_AO_CLIENTE}

Verificar se aparece a frase "Olá. Como podemos ajudar você?"
    Element Should Be Visible  locator=${MENSAGEM_BOAS_VINDAS}

Verificar se o título da página fica "Ajuda - Serviço de atendimento ao cliente da Amazon"
    Title Should Be  title=${TITULO}

Verificar se aparece a opção "Amazon e COVID-19"
    Element Should Be Visible  locator=${MSG_COVID}
    Click Element    locator=${BOTAO_COVID}

Pesquisar item na busca com o texto "${FRASE}"
    Click Element    locator=${BUSCA_ATENDIMENTO}
    Input Text    locator=${BUSCA_ATENDIMENTO}   text=${FRASE}
    Sleep    2s
    Press Keys  None  ENTER
    Sleep    2s

Verificar o retorno da pagina explicativa
    Page Should Contain    text=Os pedidos enviados pela Amazon são entregues dentro do prazo estimado

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Click Element    locator=twotabsearchtextbox
    Input Text    locator=twotabsearchtextbox   text=${PRODUTO}

Clicar no botão de pesquisa
    Click Element    locator=nav-search-submit-button

Verificar o resultado da pesquisa se está listando o produto "${PRODUTO}"
    Page Should Contain    text=${PRODUTO}

Adicionar o produto "Xbox Series S" no carrinho
    Click Element    locator=${PRODUTO_ESCOLHIDO}
    Click Button    locator=add-to-cart-button

Verificar se o produto "Xbox Series S" foi adicionado com sucesso
    Click Element    locator=${BOTAO_IR_PARA_CARRINHO}
    Page Should Contain    text=Carrinho de compras
    Page Should Contain    text=Console Xbox Series S

Remover o produto "Xbox Series S" do carrinho
    Click Element    locator=${BOTAO_EXCLUIR}

Verificar se o carrinho fica vazio
    Sleep    2s
    Page Should Contain    text=Seu carrinho de compras da Amazon está vazio