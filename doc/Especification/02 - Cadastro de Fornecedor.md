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


## UML: Diagrama de Classe


## Regras de Neg�cios

* O campo `Empresa` ser� um cadastro a parte, verificar especifica��o aqui;
* Caso a empresa selecionada seja do Paran�, n�o ser� permitido cadastrar um fornecedor do tipo `Pessoa F�sica` menor de idade;
* Caso o fornecedor seja do tipo `Pessoa F�sica`, tamb�m ser� necess�rio cadastrar o `RG` e a `Data de Nascimento`;
* A listagem dos fornecedores dever� conter **filtros** por `Nome`, `CPF/CNPJ` e `Data de Cadastro`.


## Prot�tipo