CREATE DATABASE ProjetoRoman;
GO

USE ProjetoRoman;
GO

CREATE TABLE TiposUsuarios(
	IdTipoUsuario	INT PRIMARY KEY IDENTITY,
	NomeTipoUsuario VARCHAR (200) NOT NULL
);
GO

CREATE TABLE Usuarios(
	IdUsuario		INT PRIMARY KEY IDENTITY,
	IdTipoUsuario	INT FOREIGN KEY REFERENCES TiposUsuarios(IdTipoUsuario),
	Email			VARCHAR (200) NOT NULL,
	Senha			VARCHAR (200) NOT NULL

);
GO

CREATE TABLE Professores(
	IdProfessor		INT PRIMARY KEY IDENTITY,
	IdUsuario		INT FOREIGN KEY REFERENCES Usuarios(IdUsuario),
	NomeProfessor	VARCHAR (200) NOT NULL
);
GO

CREATE TABLE Projeto(
	IdProjeto			INT PRIMARY KEY IDENTITY,
	NomeProjeto		VARCHAR (200) NOT NULL,
	Descricao		VARCHAR (200)
);
GO


DROP TABLE Professores