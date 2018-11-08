# Avaliação


## Introdução

Este projeto reflete um dos desafios realizados como parte de um processo seletivo para uma empresa na cidade de Blumenau-SC.


## Sobre o projeto

O Projeto Supplier Company, tem o intuito de demonstrar uma aplicação em .Net Core e demais tecnologias descritas abaixo para um pequeno Cadastro de Empresas e Fornecedores. 

Buscou-se além de atender os requisitos solicitados (vide os documentos de [especificações][DocumentosEspecificacoes]), foram adicionados artefatos pertinentes os meus conhecimentos em Gerência de [Projetos][GerenciaProjeto], [Gerência de Configuração][GerenciaConfiguracao], Gestão de [Banco de Dados (DBA)][GerenciaDBA], entre outros conceitos proprício e etapas para concepção de um software.


## Desafio

Criar uma listagem de fornecedores relacionado a uma empresa.

[![Prototipo da Tela](https://github.com/alexandredorea/SupplierCompany/blob/master/doc/Mockup/Images/Prototypes/Lista%20de%20Fornecedores.png)

* A listagem dos fornecedores deverá conter **filtros** por `Nome`, `CPF/CNPJ` e `Data de Cadastro`.


## Cenário

Você trabalha em uma Agência de Gestão de Eventos de grande importância para sua cidade. O responsável pela área decidiu que chegou a hora de implementar uma nova funcionalidade que permita cadastrar uma empresa que tem vários fornecedores para seus serviços. Porém, podem haver varias agências de eventos como a sua que pode querer usar o sistema num futuro.

Sua função é desenvolver uma página de “Cadastro de Empresa”, onde o usuário irá preencher alguns campos pertinentes à página. Bem como uma página de "Cadastro de Fornecedor", atendendo também as respectivas regras.


## Especificações

A documentação deste projeto encontram-se em:

* [Cadastro de Empresas][DocumentoEmpresa]
* [Cadastro de Fornecedores][DocumentoFornecedor]


## Sugestões

* Minimizar o uso do Scaffolding (geração automatizada de código), pois o objetivo do teste era analisar o meu conhecimento;
* Para as Tecnológicas/Frameworks foi sugerido que utiliza-se o que mais eu conhecia para implementação e atendimento do que se pediu nos documentos de especificações.


## Observação

* A empresa ainda informou que trabalha com ASP.NET MVC 4 e 5, WebForms, WebAPI 1 e 2, Bootstrap, AngularJS, NHibernate como Framework ORM e StructureMap como Framework para Injeção de Dependência.


## Recursos utilizados no desenvolvimento da aplicação:

**Ferramentas**

|Recurso                                   |Documento                         |Download          |
|------------------------------------------|----------------------------------|------------------|
|Visual Studio 2017                        |[Guia][GuiaVS2017]                |[IDE][IDEVS2017]  |
|SQL Server 2017                           |[Guia][GuiaSQL2017]               |[IDE][IDESQL2017] |


**Tecnologias**

|Recurso                                   |Documento                         |Download          |
|------------------------------------------|----------------------------------|------------------|
|ASP.NET Core 2.0                          |[Guia][GuiaASPNetCore]            |N/A               |
|Entity Framework Core 2.0                 |[Guia][GuiaEntityCore]            |N/A               |
|Migration                                 |[Guia][GuiaMigrations]            |N/A               |
|AutoMapper                                |N/A                               |N/A               |
|Flunt                                     |N/A                               |N/A               |
|FluentAssertions                          |N/A                               |N/A               |
|NSubstitute                               |N/A                               |N/A               |


**Arquiteturas e Conceitos**

|Recurso                                   |Documento                         |Download          |
|------------------------------------------|----------------------------------|------------------|
|Conceitos de DDD (Domain Driven Design)   |[Tutorial][GuiaDDD]               |N/A               |
|Conceitos de TDD (Test Driven Design)     |N/A                               |N/A               |
|Repositório de Dados (Repository Pattern) |[Tutorial][GuiaRepositoryPattern] |N/A               |
|SOLID                                     |N/A                               |N/A               |
|Clean Code                                |N/A                               |N/A               |


## Mendigo de estrelas

Se você gostou deste projeto ou te ajudou de alguma forma com algum conceito, clica na estrelinha, isso ajuda muito.


## Tem alguma pergunta ou sugestão de melhoria neste projeto?

Sinta-se à vontade em abrir um [issue][DefeitoSupplierCompany] ou [pull request][PullRequest].






[//]: # (Links de referências para a andamento do projeto)

[DocumentosEspecificacoes]: <https://github.com/alexandredorea/SupplierCompany/tree/master/doc/Especification>
[GerenciaProjeto]: <https://github.com/alexandredorea/SupplierCompany/projects>
[GerenciaConfiguracao]: <https://github.com/alexandredorea/SupplierCompany/tree/master/doc>
[GerenciaDBA]: <https://github.com/alexandredorea/SupplierCompany/blob/master/doc/Mockup/Images/Diagrams/Diagrama%20do%20Banco%20de%20Dados.PNG>


[//]: # (Links de referências para a documentação)

[DocumentoEmpresa]: <https://github.com/alexandredorea/SupplierCompany/blob/master/doc/Especification/01%20-%20Cadastro%20de%20Empresa.md>
[DocumentoFornecedor]: <https://github.com/alexandredorea/SupplierCompany/blob/master/doc/Especification/02%20-%20Cadastro%20de%20Fornecedor.md>


[//]: # (Links de referências para o quadro de recursos utilizados)

[GuiaVS2017]: <https://docs.microsoft.com/pt-br/visualstudio/ide/>
[IDEVS2017]: <https://www.visualstudio.com/pt-br/downloads/>
[GuiaCSharp]: <https://docs.microsoft.com/pt-br/dotnet/csharp/>
[GuiaDDD]: <http://www.agileandart.com/2010/07/16/ddd-introducao-a-domain-driven-design/>
[GuiaASPNetCore]: <https://docs.microsoft.com/pt-br/dotnet/core/>
[GuiaEntityCore]: <https://docs.microsoft.com/pt-br/dotnet/framework/>
[GuiaRepositoryPattern]: <https://code.msdn.microsoft.com/windowsdesktop/Implementando-Repositrio-aabcdbce>
[GuiaMigrations]: <https://docs.microsoft.com/pt-br/ef/core/managing-schemas/migrations/>
[GuiaSQL2017]: <https://docs.microsoft.com/pt-br/sql/sql-server/sql-server-technical-documentation>
[IDESQL2017]: <https://www.microsoft.com/pt-br/sql-server/sql-server-downloads>


[//]: # (Links de referências aos problemas neste projeto)

[DefeitoSupplierCompany]: <https://github.com/alexandredorea/SupplierCompany/issues>
[PullRequest]: <https://github.com/alexandredorea/SupplierCompany/pulls>