***Settings***
Documentation       Aqui teremos todas as palavras chaves de aumtomação dos comportamentos

***Keywords***
Dado que acesso a página principal
    Go To 			${base_url}

Quando submeto o meu email "${email}"
	Input Text			${CAMPO_EMAIL}		${email}
	Click Element		${BOTAO_ENTRAR}
	Sleep				5   #Temporario (não é uma boa prática)

Então devo ser autenticado
	Wait Until Page Contains Element		${DIV_DASH}

Então devo ver a mensagem "${expect_message}"
	Wait Until Element Contains     ${DIV_ALERT}    ${expect_message}

#cadastro de pratos

Dado que "${produto}" é um dos meus pratos
	Set Test Variable		${produto}  ##recebe o valor "&{nhoque}" fica disponível toda a exec do Test Case
										##É preciso dessa informação tanto para "cadastrar" como para "validar"

Quando faço o cadastro desse item
	Wait Until Element Is Visible			${BOTAO_ADD}    5		
	Click Element							${BOTAO_ADD}
	Choose File			${CAMPO_FOTO}    	${EXECDIR}/resources/images/${produto['img']}
	Input Text			${CAMPO_NOME} 		${produto['nome']}
	Input Text			${CAMPO_TIPO}		${produto['tipo']}
	Input Text			${CAMPO_PRECO}		${produto['preco']}
	Click Element		${BOTAO_CAD}						
	Sleep				5				#Temporario (não é uma boa prática)
	
						                       

Então devo ver este prato no meu dashboard
	Wait Until Element Contains			${DIV_LISTA}		${produto['nome']}

