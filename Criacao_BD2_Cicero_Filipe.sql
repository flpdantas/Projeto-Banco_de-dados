create database Festas
on
( name = Festas_dat,
	filename = 'C:\Users\OneDrive\Área de Trabalho\Banco de dados 2\festasdat.mdf',
	size = 10,
	maxsize = 50,
	filegrowth = 5 )
log on
( name = Festas_log,
	filename = 'C:\Users\OneDrive\Área de Trabalho\Banco de dados 2\festaslog.ldf',
	size = 5mb,
	maxsize = 25mb,
	filegrowth = 5mb ) ;