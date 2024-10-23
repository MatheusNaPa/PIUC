DROP DATABASE IF EXISTS projeto;
CREATE DATABASE projeto;
USE projeto;

CREATE TABLE Categorias (
	idCategoria INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	tipo VARCHAR(25)
);

CREATE TABLE Produtos (
	idProduto INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	descricao VARCHAR(40),
	preco NUMERIC(6,2),
	qtdEstoque INT,
	idCategoria INT,
	CONSTRAINT fk_produto_categora FOREIGN KEY (idCategoria) 
		REFERENCES Categorias (idCategoria)
); 
