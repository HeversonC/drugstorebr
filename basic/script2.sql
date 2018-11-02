#DROP TABLE aula;
#DROP TABLE curso;
#CREATE TABLE IF NOT EXISTS produto (

CREATE TABLE produto (
    id INT NOT NULL,
    nome VARCHAR(30),
    descricao VARCHAR(30),
    preco DECIMAL,
    qtde int,

    PRIMARY KEY(id)
)   ENGINE=INNODB;

CREATE TABLE cliente (
    id INT NOT NULL,
    nome VARCHAR(45),
    endereco VARCHAR(30),
    telefone int,
    PRIMARY KEY (id)
)   ENGINE=INNODB;

CREATE TABLE pedido (
    id INT NOT NULL AUTO_INCREMENT,
    data date,
    total decimal,
    produto_id INT NOT NULL,
    cliente_id INT NOT NULL,

    PRIMARY KEY(id),
    INDEX (produto_id),
    INDEX (cliente_id),

    FOREIGN KEY (produto_id)
      REFERENCES produto(id)
      ON UPDATE CASCADE ON DELETE RESTRICT,

    FOREIGN KEY (cliente_id)
      REFERENCES cliente(id)
)   ENGINE=INNODB;

