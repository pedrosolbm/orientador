USE orientador;

CREATE TABLE IF NOT EXISTS roles(
    role_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS users (
    user_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    is_active BOOLEAN NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    name VARCHAR(200) NOT NULL,
    email VARCHAR(200) NOT NULL,
    password VARCHAR(200) NOT NULL,
    phone BIGINT(11) NOT NULL,
    role_id INTEGER NOT NULL,
    FOREIGN KEY (role_id) REFERENCES roles(role_id)
);

CREATE TABLE IF NOT EXISTS activities (
    activity_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    description VARCHAR(200) NOT NULL,
    deadline DATETIME 
);

SET character_set_client = utf8;
SET character_set_connection = utf8;
SET character_set_results = utf8;
SET collation_connection = utf8_general_ci;

INSERT INTO roles(name) 
VALUES ("admin"), ("aluno"), ("professor");

INSERT INTO users(is_active, cpf, name, email, password, phone, role_id)
VALUES (true, '12345678900', 'Pedro Sol', 'pedro@email.com', 'senha123','24999887744', 1),
(true, '12345678777', 'Ana Luiza', 'ana@email.com', 'senha123','24999885588', 2);