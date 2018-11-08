# Especificação


## Página: Cadastro de Empresa

Essa página deve permitir o cadastro de uma nova empresa e a exibição de mensagens de erro em caso de preenchimento incorreto dos campos do formulário da página. A página deve conter as seguintes informações:


| Campo         | Tipo   | Tamanho        | Preenchimento obrigatório | Valor Padrão |
|---------------|--------|----------------|---------------------------|--------------|
| Nome Fantasia | string | 100 caracteres | Sim                       | N/A          |
| CNPJ          | string |  14 caracteres | Sim                       | N/A          | 
| UF            | string |   2 caracteres | Sim                       | N/A          |


## Importante

* Caso o usuário não preencha os campos corretamente, a página deve exibir indicações visuais ou através de textos informando o motivo do erro e o que o usuário tem que preencher corretamente para que o cadastro da empresa seja efetuado.


## UML: Diagrama de Classe

Descrição dos campos usados na página de Cadastro de Empresa.

[![Diagrama de Classe](https://github.com/alexandredorea/SupplierCompany/blob/master/doc/Mockup/Images/Diagrams/Diagrama%20de%20Classe%20-%2001%20-%20Empresa.svg)


## Protótipo
[![Prototipo da Tela](https://github.com/alexandredorea/SupplierCompany/blob/master/doc/Mockup/Images/Prototypes/Cadastro%20de%20Empresa.png)