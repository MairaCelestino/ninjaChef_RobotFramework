***Settings***
Documentation       Aqui teremos palavras chaves de apoio

***Keywords***
Login Session   
    [Arguments]         ${email}

    base.Open Session 

    Go To       ${base_url}

    Input Text			 ${CAMPO_EMAIL}		${email}
	Click Element		 ${BOTAO_ENTRAR}
	Sleep				5   #Temporario (não é uma boa prática)

    Wait Until Page Contains Element		${DIV_DASH}