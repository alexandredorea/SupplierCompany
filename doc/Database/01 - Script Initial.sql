/**  
 * Criação da base da dados  
 */ 
IF DB_ID(N'Agencia') IS NULL 
  BEGIN 
      CREATE DATABASE [Agencia] 
  END 
GO 

/**  
 * Definição de qual base da dados usar para construir as tabelas 
 */ 
USE [Agencia] 
GO 


IF OBJECT_ID(N'Agencia..Estados', N'U') IS NULL 
  BEGIN 
      
	  /**   
       * Criação da tabela dos Estados e Unidades Federativas 
       */ 
      CREATE TABLE [Estados] 
        ( 
           [EstadoId] INT IDENTITY (1, 1) NOT NULL, 
           [Nome]     VARCHAR(20)         NOT NULL, 
           [UF]       CHAR(2)             NOT NULL UNIQUE, 
           CONSTRAINT [PK_Estados_EstadoId] PRIMARY KEY CLUSTERED ([EstadoId] ASC) 
        ); 

      /**   
       * Definição dos índices da tabela  
       */ 
      CREATE INDEX [IX_Estados_EstadoId] 
        ON [Estados] ([EstadoId] ASC); 

      /**   
        * Inserir exemplo de dados na tabela em ordem alfabética 
        */ 
      INSERT INTO [Estados] 
                  ( [UF], [Nome] ) 
           VALUES ( 'AC','Acre' );
	  
	  INSERT INTO [Estados] 
                  ( [UF], [Nome] ) 
           VALUES ( 'AL','Alagoas' ); 
	  
	  INSERT INTO [Estados] 
                  ( [UF], [Nome] ) 
           VALUES ( 'AM','Amazonas' ); 
	  
	  INSERT INTO [Estados] 
                  ( [UF], [Nome] ) 
           VALUES ( 'AP','Amapá' ); 
	  
	  INSERT INTO [Estados] 
                  ( [UF], [Nome] ) 
           VALUES ( 'BA','Bahia' ); 
	  
	  INSERT INTO [Estados] 
                  ( [UF], [Nome] ) 
           VALUES ( 'CE','Ceará' ); 
	  
	  INSERT INTO [Estados] 
                  ( [UF], [Nome] ) 
           VALUES ( 'DF','Distrito Federal' ); 
	  
	  INSERT INTO [Estados] 
                  ( [UF], [Nome] ) 
           VALUES ( 'ES','Espírito Santo' ); 
	  
	  INSERT INTO [Estados] 
                  ( [UF], [Nome] ) 
           VALUES ( 'GO','Goiás' ); 
	  
	  INSERT INTO [Estados] 
                  ( [UF], [Nome] ) 
           VALUES ( 'MA','Maranhão' ); 
	  
	  INSERT INTO [Estados] 
                  ( [UF], [Nome] ) 
           VALUES ( 'MG','Minas Gerais' ); 
	  
	  INSERT INTO [Estados] 
                  ( [UF], [Nome] ) 
           VALUES ( 'MS','Mato Grosso do Sul' ); 
	  
	  INSERT INTO [Estados] 
                  ( [UF], [Nome] ) 
           VALUES ( 'MT','Mato Grosso' ); 
	  
	  INSERT INTO [Estados] 
                  ( [UF], [Nome] ) 
           VALUES ( 'PA','Pará' ); 
	  
	  INSERT INTO [Estados] 
                  ( [UF], [Nome] ) 
           VALUES ( 'PB','Paraíba' ); 
	  
	  INSERT INTO [Estados] 
                  ( [UF], [Nome] ) 
           VALUES ( 'PE','Pernambuco' ); 
	  
	  INSERT INTO [Estados] 
                  ( [UF], [Nome] ) 
           VALUES ( 'PI','Piauí' ); 
	  
	  INSERT INTO [Estados] 
                  ( [UF], [Nome] ) 
           VALUES ( 'PR','Paraná' ); 
	  
	  INSERT INTO [Estados] 
                  ( [UF], [Nome] ) 
           VALUES ( 'RJ','Rio de Janeiro' ); 
	  
	  INSERT INTO [Estados] 
                  ( [UF], [Nome] ) 
           VALUES ( 'RN','Rio Grande do Norte' ); 
	  
	  INSERT INTO [Estados] 
                  ( [UF], [Nome] ) 
           VALUES ( 'RO','Rondônia' ); 
	  
	  INSERT INTO [Estados] 
                  ( [UF], [Nome] ) 
           VALUES ( 'RR','Roraima' ); 
	  
	  INSERT INTO [Estados] 
                  ( [UF], [Nome] ) 
           VALUES ( 'RS','Rio Grande do Sul' ); 
	  
	  INSERT INTO [Estados] 
                  ( [UF], [Nome] ) 
           VALUES ( 'SC','Santa Catarina' ); 
	  
	  INSERT INTO [Estados] 
                  ( [UF], [Nome] ) 
           VALUES (  'SE','Sergipe' ); 
	  
	  INSERT INTO [Estados] 
                  ( [UF], [Nome] ) 
           VALUES ( 'SP','São Paulo' ); 
	  
	  INSERT INTO [Estados] 
	  	          ( [UF],[Nome] ) 
	  	   VALUES ('TO','Tocantins' ); 
  END 
GO 


IF OBJECT_ID(N'Agencia..TipoPessoas', N'U') IS NULL 
  BEGIN 
      
	  /**   
       * Criação da tabela de Tipo de Pessoa  
       */ 
      CREATE TABLE [TipoPessoas] 
        ( 
           [TipoPessoaId] INT IDENTITY (1, 1) NOT NULL, 
           [Descricao]    VARCHAR(15)         NOT NULL, 
           [Sigla]        CHAR(2)             NOT NULL, 
           CONSTRAINT [PK_TipoPessoas_TipoPessoaId] PRIMARY KEY CLUSTERED ([TipoPessoaId] ASC) 
        ); 

      /**   
       * Definição dos índices da tabela  
       */ 
      CREATE INDEX [IX_TipoPessoas_TipoPessoaId] 
        ON [TipoPessoas] ([TipoPessoaId] ASC); 

      /**   
       * Inserir exemplo de dados na tabela em ordem alfabética 
       */ 
      INSERT INTO [TipoPessoas] 
                  ( [Descricao], [Sigla] ) 
          VALUES  ( 'Pessoa Física', 'PF' ); 

      INSERT INTO [TipoPessoas] 
                  ( [Descricao], [Sigla] ) 
           VALUES ( 'Pessoa Juridica', 'PJ' ); 
  END 
GO 


IF OBJECT_ID(N'Agencia..Empresas', N'U') IS NULL 
  BEGIN 
      
	  /**   
       * Criação da tabela de Empresas 
       */ 
      CREATE TABLE [Empresas] 
        ( 
           [EmpresaId]    INT IDENTITY (1, 1) NOT NULL, 
           [NomeFantasia] VARCHAR(100)        NOT NULL, 
           [CNPJ]         VARCHAR(14)         NOT NULL, 
           [EstadoId]     INT                 NOT NULL, 
           CONSTRAINT [PK_Empresas_EmpresaId] PRIMARY KEY CLUSTERED ([EmpresaId] ASC), 
           CONSTRAINT [FK_Estados_Empresas_EstadoId] FOREIGN KEY ([EstadoId]) REFERENCES [Estados] ([EstadoId])
        ); 

      /**   
       * Definição dos índices da tabela  
       */ 
      CREATE INDEX [IX_Empresas_Varios] 
        ON [Empresas] ([EmpresaId] ASC, [EstadoId] ASC, [NomeFantasia]); 

      /**   
       * Inserir exemplo de dados na tabela 
       */ 
      INSERT INTO [Empresas] 
                  ([NomeFantasia], [CNPJ], [EstadoId]) 
           VALUES ('BNU Data Software', '87613019000191', 24); 

      INSERT INTO [Empresas] 
                  ([NomeFantasia], [CNPJ], [EstadoId]) 
      VALUES      ('SSA Data Software', '47660437000115', 5); 
  END 
GO 


IF OBJECT_ID(N'Agencia..Fornecedores', N'U') IS NULL 
  BEGIN 
      
	  /**   
       * Criação da tabela dos Fornecedores
       */ 
	  CREATE TABLE [Fornecedores] 
        ( 
           [FornecedorId]   INT IDENTITY (1, 1) NOT NULL, 
           [NomeFornecedor] VARCHAR(100)        NOT NULL, 
           [TipoPessoaId]   INT                 NOT NULL, 
           [CpfCnpj]        VARCHAR(14)         NOT NULL, 
           [Rg]             VARCHAR(10)         NULL, 
           [DataNascimento] DATETIME            NULL, 
           [DataCadastro]   DATETIME            NOT NULL DEFAULT GETDATE(), 
           CONSTRAINT [PK_Fornecedores_FornecedorId] PRIMARY KEY CLUSTERED ([FornecedorId] ASC),
           CONSTRAINT [FK_TipoPessoas_Fornecedores_TipoPessoaId] FOREIGN KEY ([TipoPessoaId]) REFERENCES [TipoPessoas] ([TipoPessoaId])
        ); 
	  
	  /**   
       * Definição dos índices da tabela  
       */ 
      CREATE INDEX [IX_Fornecedores_Varios] 
        ON [Fornecedores] ([FornecedorId] ASC, [NomeFornecedor], [CpfCnpj], [DataCadastro], [TipoPessoaId] ASC);

      /**   
       * Inserir exemplo de dados na tabela 
       */ 
      INSERT INTO [Fornecedores] 
                  ( [NomeFornecedor], [TipoPessoaId], [CpfCnpj], [Rg], [DataNascimento] ) 
           VALUES (  'Alexandre Dórea', 1, '00347167500', '0346420817', '06/05/1982' ); 

      INSERT INTO [Fornecedores] 
                  ( [NomeFornecedor], [TipoPessoaId], [CpfCnpj] ) 
           VALUES (  'Pirate Bay', 2, '43712525000162' ); 
  END 
GO 


IF OBJECT_ID(N'Agencia..Telefones', N'U') IS NULL 
  BEGIN

      /**   
       * Criação da tabela dos Telefones
       */ 
      CREATE TABLE [Telefones] 
        ( 
           [TelefoneId]   INT IDENTITY (1, 1) NOT NULL, 
           [Numero]       VARCHAR (11) NOT NULL, 
           [FornecedorId] INT NOT NULL, 
           CONSTRAINT [PK_Telefones_TelefoneId] PRIMARY KEY CLUSTERED ([TelefoneId] ASC), 
           CONSTRAINT [FK_Fornecedores_Telefones_FornecedorId] FOREIGN KEY ([FornecedorId]) REFERENCES [Fornecedores] ([FornecedorId])
        ); 
	  
	  /**   
       * Definição dos índices da tabela  
       */ 
      CREATE INDEX [IX_Telefones_Varios] 
        ON [Telefones] ([TelefoneId] ASC, [FornecedorId] ASC); 
	  
	  /**   
       * Inserir exemplo de dados na tabela 
       */ 
      INSERT INTO [Telefones] 
                  ([Numero],[FornecedorId]) 
           VALUES ('47999284358', 1); 

      INSERT INTO [Telefones] 
                  ([Numero],[FornecedorId]) 
           VALUES ('71993330800', 1); 

      INSERT INTO [Telefones] 
                  ([Numero],[FornecedorId]) 
           VALUES ('4733827700', 2); 
  END
GO 


IF OBJECT_ID(N'Agencia..FornecedorEmpresa', N'U') IS NULL 
  BEGIN

      /**   
       * Criação da tabela auxiliar para Empresa x Fornecedor
       */ 
      CREATE TABLE [FornecedorEmpresa] 
        ( 
           [FornecedorId] INT NOT NULL, 
           [EmpresaId]    INT NOT NULL, 
           CONSTRAINT [FK_Fornecedores_Empresa_FornecedorId] FOREIGN KEY ([FornecedorId]) REFERENCES [Fornecedores] ([FornecedorId]),
           CONSTRAINT [FK_Empresa_Fornecedores_FornecedorId] FOREIGN KEY ([EmpresaId]) REFERENCES [Empresas] ([EmpresaId])
        ); 
	  
	  /**   
       * Definição dos índices da tabela  
       */ 
      CREATE INDEX [IX_FornecedorEmpresa_Varios] 
        ON FORNECEDOREMPRESA ([FornecedorId] ASC, [EmpresaId] ASC); 
	  
	  /**   
       * Inserir exemplo de dados na tabela 
       */ 
      INSERT INTO [FornecedorEmpresa] 
           VALUES (1,2); 

      INSERT INTO [FornecedorEmpresa] 
           VALUES (2,2); 
  END 
GO 