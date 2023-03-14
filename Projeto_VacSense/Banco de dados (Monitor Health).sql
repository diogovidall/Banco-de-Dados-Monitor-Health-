CREATE DATABASE MonitorHealth;
USE MonitorHealth;

create table tabelaEmpresa (
  idEmpresa int primary key auto_increment,
  nomeEmpresa varchar(60) not null,
  cnpj char(15)not null
);

create table tabelaUsuario (
  idUsuario int primary key auto_increment,
  nomeUsuario varchar(60) not null,
  senha varchar(60) not null,
  email varchar(60) not null
);

create table tabelaSensor (
  idSensor int primary key auto_increment,
  dtInstalacao date not null,
  dtManutenção date not null
);

create table tbEntradaSensor (
  idEntrada int primary key auto_increment,
  valorEntrada float not null constraint chkEntrada check (ValorEntrada in ('1', '0')),
  dtEntrada datetime not null,
  temperatura int not null
);

INSERT INTO tabelaEmpresa VALUES
(null,'MedLand', '42287068000143'),
(null, 'GioCare', '17714687000120'),
(null, 'SUS', '48857072000186');
SELECT * FROM tabelaEmpresa;

INSERT INTO tabelaUsuario VALUES
(null, 'Miguel', '4029182', 'miguel.silva@monitor.health'),
(null, 'Lucas', '2938467','lucas.zanzini@monitor.health'),
(null, 'Enzo', '19328484','enzo.motta@monitor.health');
SELECT * FROM tabelaUsuario;

INSERT INTO tabelaSensor VALUES
(null,'2020-03-20', '2020-06-20'),       
(null, '2020-09-20', '2020-12-20'),
(null, '2021-03-20', '2021-06-20');
SELECT * FROM tabelaSensor;

INSERT INTO tbEntradaSensor VALUES
(null, 1, '2020-03-20', '2'),
(null, 0, '2020-06-20', '10'),
(null, 1, '2020-09-20', '3');
SELECT * FROM tbEntradaSensor;






