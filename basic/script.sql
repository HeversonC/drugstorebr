#DROP TABLE aula;
#DROP TABLE curso;

CREATE TABLE IF NOT EXISTS curso (
curso_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
curso_nome VARCHAR(45),
PRIMARY KEY (curso_id)
);


CREATE TABLE aula (
aula_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
aula_nome VARCHAR(45),
curso_id INT UNSIGNED NOT NULL,
PRIMARY KEY (aula_id),
FOREIGN KEY (curso_id) REFERENCES curso (curso_id)
);


