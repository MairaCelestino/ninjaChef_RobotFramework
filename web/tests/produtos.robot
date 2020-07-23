***Settings***
Documentation           Cadastro de produtos/pratos
...                     Sendo um cozinheiro amador
...                    	Quero cadastrar meus melhores pratos
...                 	Para que eu possa cozinha-los para outras pessoas

Resource		../resources/base.robot
        
Test Setup		Login Session      papito@yhaoo.com 
Test Teardown	Close Session

***Variables***
#Dicionario
&{nhoque}=          img=nnhoque.jpg   nome=Nnhoque molho párpica     tipo=Massas     preco=20.00
***Test Cases***  
#BDD
Novo prato
    Dado que "&{nhoque}" é um dos meus pratos
    Quando faço o cadastro desse item
    Então devo ver este prato no meu dashboard


