# Especificação


## Página: Cadastro de Fornecedor

Essa página deve permitir o cadastro de um novo fornecedor e a exibição de mensagens de erro em caso de preenchimento incorreto dos campos do formulário da página. A página deve conter as seguintes informações:


| Campo              | Tipo       | Tamanho        | Preenchimento obrigatório | Valor Padrão |
|--------------------|------------|----------------|---------------------------|--------------|
| Empresa            | Empresas   | N/A            | Sim                       | N/A          |
| Nome Fornecedor    | string     | 100 caracteres | Sim                       | N/A          | 
| Tipo Pessoa        | TipoPessoa | N/A            | Sim                       | N/A          | 
| CPF/CNPJ           | string     | 14 caracteres  | Sim                       | N/A          | 
| RG                 | string     | 10 caracteres  | Não                       | NULL         |
| Data de Nascimento | Datetime   | N/A            | Não                       | NULL         |
| Data de Cadastro   | Datetime   | N/A            | Sim                       | Datetime.Now |
| Telefones          | string     | N/A            | Sim                       | N/A          |


## Importante

* Caso o usuário não preencha os campos corretamente, a página deve exibir indicações visuais ou através de textos informando o motivo do erro e o que o usuário tem que preencher corretamente para que o cadastro da fornecedor seja efetuado.


## Regras de Negócios

* O campo `Empresa` será um cadastro a parte, verifique as especificações [aqui][CadastroEmpresa];
* Caso a empresa selecionada seja do Paraná, não será permitido cadastrar um fornecedor do tipo `Pessoa Física` menor de idade;
* Caso o fornecedor seja do tipo `Pessoa Física`, também será necessário cadastrar o `RG` e a `Data de Nascimento`;
* A listagem dos fornecedores deverá conter **filtros** por `Nome`, `CPF/CNPJ` e `Data de Cadastro`.


## UML: Diagrama de Classe

Descrição dos campos usados na página de Cadastro de Fornecedor.


## Protótipo

[![Prototipo da Tela](https://github.com/alexandredorea/SupplierCompany/blob/master/doc/Mockup/Images/Prototypes/Cadastro%20de%20Fornecedor.png)



[//]: # (Links de referências)

[CadastroEmpresa]: <https://github.com/alexandredorea/SupplierCompany/blob/master/doc/Especification/01%20-%20Cadastro%20de%20Empresa.md>