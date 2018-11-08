# Especifica��o


## P�gina: Cadastro de Empresa

Essa p�gina deve permitir o cadastro de uma nova empresa e a exibi��o de mensagens de erro em caso de preenchimento incorreto dos campos do formul�rio da p�gina. A p�gina deve conter as seguintes informa��es:


| Campo         | Tipo   | Tamanho        | Preenchimento obrigat�rio | Valor Padr�o |
|---------------|--------|----------------|---------------------------|--------------|
| Nome Fantasia | string | 100 caracteres | Sim                       | N/A          |
| CNPJ          | string |  14 caracteres | Sim                       | N/A          | 
| UF            | string |   2 caracteres | Sim                       | N/A          |


## Importante

* Caso o usu�rio n�o preencha os campos corretamente, a p�gina deve exibir indica��es visuais ou atrav�s de textos informando o motivo do erro e o que o usu�rio tem que preencher corretamente para que o cadastro da empresa seja efetuado.


## UML: Diagrama de Classe

Descri��o dos campos usados na p�gina de Cadastro de Empresa.

[![Diagrama de Classe](https://github.com/alexandredorea/SupplierCompany/blob/master/doc/Mockup/Images/Diagrams/Diagrama%20de%20Classe%20-%2001%20-%20Empresa.svg)


## Prot�tipo
[![Prototipo da Tela](https://github.com/alexandredorea/SupplierCompany/blob/master/doc/Mockup/Images/Prototypes/Cadastro%20de%20Empresa.png)