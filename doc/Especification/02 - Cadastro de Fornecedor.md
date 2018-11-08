# Especifica��o


## P�gina: Cadastro de Fornecedor

Essa p�gina deve permitir o cadastro de um novo fornecedor e a exibi��o de mensagens de erro em caso de preenchimento incorreto dos campos do formul�rio da p�gina. A p�gina deve conter as seguintes informa��es:


| Campo              | Tipo       | Tamanho        | Preenchimento obrigat�rio | Valor Padr�o |
|--------------------|------------|----------------|---------------------------|--------------|
| Empresa            | Empresas   | N/A            | Sim                       | N/A          |
| Nome Fornecedor    | string     | 100 caracteres | Sim                       | N/A          | 
| Tipo Pessoa        | TipoPessoa | N/A            | Sim                       | N/A          | 
| CPF/CNPJ           | string     | 14 caracteres  | Sim                       | N/A          | 
| RG                 | string     | 10 caracteres  | N�o                       | NULL         |
| Data de Nascimento | Datetime   | N/A            | N�o                       | NULL         |
| Data de Cadastro   | Datetime   | N/A            | Sim                       | Datetime.Now |
| Telefones          | string     | N/A            | Sim                       | N/A          |


## Importante

* Caso o usu�rio n�o preencha os campos corretamente, a p�gina deve exibir indica��es visuais ou atrav�s de textos informando o motivo do erro e o que o usu�rio tem que preencher corretamente para que o cadastro da fornecedor seja efetuado.


## Regras de Neg�cios

* O campo `Empresa` ser� um cadastro a parte, verifique as especifica��es [aqui][CadastroEmpresa];
* Caso a empresa selecionada seja do Paran�, n�o ser� permitido cadastrar um fornecedor do tipo `Pessoa F�sica` menor de idade;
* Caso o fornecedor seja do tipo `Pessoa F�sica`, tamb�m ser� necess�rio cadastrar o `RG` e a `Data de Nascimento`;
* A listagem dos fornecedores dever� conter **filtros** por `Nome`, `CPF/CNPJ` e `Data de Cadastro`.


## UML: Diagrama de Classe

Descri��o dos campos usados na p�gina de Cadastro de Fornecedor.


## Prot�tipo

[![Prototipo da Tela](https://github.com/alexandredorea/SupplierCompany/blob/master/doc/Mockup/Images/Prototypes/Cadastro%20de%20Fornecedor.png)



[//]: # (Links de refer�ncias)

[CadastroEmpresa]: <https://github.com/alexandredorea/SupplierCompany/blob/master/doc/Especification/01%20-%20Cadastro%20de%20Empresa.md>