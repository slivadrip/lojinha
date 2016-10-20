-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 02/07/2015 às 14:16
-- Versão do servidor: 5.5.43-0ubuntu0.14.04.1
-- Versão do PHP: 5.5.9-1ubuntu4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `notasfiscais`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `endereco` varchar(40) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Fazendo dump de dados para tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `cpf`, `endereco`, `email`, `telefone`) VALUES
(1, 'Adriano', '123412213', 'Simolandia', 'sliva@adriano.com', '34881115'),
(2, 'Naruto', '9999999999', 'konoha', 'naruto@konoha.com.jp', '11231341');

-- --------------------------------------------------------

--
-- Estrutura para tabela `notasfiscais`
--

CREATE TABLE IF NOT EXISTS `notasfiscais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idPrestador` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `data` varchar(10) NOT NULL,
  `valor` double NOT NULL,
  `aliquota` double NOT NULL,
  `imposto` double NOT NULL,
  `servico` varchar(60) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Fazendo dump de dados para tabela `notasfiscais`
--

INSERT INTO `notasfiscais` (`id`, `idPrestador`, `idCliente`, `data`, `valor`, `aliquota`, `imposto`, `servico`, `idUsuario`) VALUES
(2, 1, 1, '12', 12, 12, 12, 'lol', 0),
(4, 1, 1, '12', 12, 12, 12, '12', 9),
(6, 2, 1, '12/12/12', 123123, 12321, 999, 'lllllllllllll', 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `prestador`
--

CREATE TABLE IF NOT EXISTS `prestador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `cnpj` varchar(45) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Fazendo dump de dados para tabela `prestador`
--

INSERT INTO `prestador` (`id`, `nome`, `cnpj`, `endereco`, `telefone`) VALUES
(2, 'Sasuke', '123341', 'Som', '123124214');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `tipo` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Fazendo dump de dados para tabela `usuario`
--

INSERT INTO `usuario` (`id`, `login`, `senha`, `nome`, `tipo`) VALUES
(9, 'root', '63A9F0EA7BB98050796B649E85481845', 'root', 'ADMINISTRADOR'),
(10, 'user', 'EE11CBB19052E40B07AAC0CA060C23EE', 'user', 'PRESTADOR'),
(11, 'admin', '21232F297A57A5A743894A0E4A801FC3', 'Adriano', 'ADMINISTRADOR');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
