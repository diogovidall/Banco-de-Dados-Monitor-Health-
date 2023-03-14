CREATE DATABASE MonitorHealth;
USE MonitorHealth;

CREATE TABLE tableEmpresa (
  idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
  nomeEmpresa VARCHAR(60) NOT NULL,
  cnpj CHAR(11) NOT NULL
) AUTO_INCREMENT = 100;

INSERT INTO tableEmpresa VALUES 
('', '', ''),
('', '', ''),
('', '', '');

CREATE TABLE tableUsuario (
  idUsuario INT PRIMARY KEY AUTO_INCREMENT,
  nomeUsuario VARCHAR(60) NOT NULL,
  senha VARCHAR(60) NOT NULL,
  permissoes VARCHAR(30) CONSTRAINT chkPermissao CHECK (permissoes IN ('basico', 'intermediario', 'total'))
  );
-- Permissão basica: Apenas visualização dos dados;
-- Permição intermediario: Visualização dos dados, permição para alterar algumas configurações;
-- Permição total: Permição para realizar todas as ações dentro do sistema, incluindo criar novos usuarios dentro da empresa.
  
  INSERT INTO tableUsuario VALUES 
('', '', ''),
('', '', ''),
('', '', '');

CREATE TABLE tableSensor (
  idSensor INT PRIMARY KEY AUTO_INCREMENT,
  tipoSensor VARCHAR(30) CONSTRAINT chkTipo CHECK (tipoSensor IN ('presenca', 'temperatura')),
  dataInstalacao DATE NOT NULL,
  dataValidade DATE NOT NULL
);

INSERT INTO tableSensor VALUES 
('', '', ''),
('', '', ''),
('', '', '');

CREATE TABLE dadosSensor (
  idEntrada INT PRIMARY KEY AUTO_INCREMENT,
  valorEntrada FLOAT NOT NULL, -- No caso do sensor de presença será 0 ou 1
  dataEntrada DATETIME NOT NULL
);

INSERT INTO dadosSensor VALUES 
('', '', ''),
('', '', ''),
('', '', '');


