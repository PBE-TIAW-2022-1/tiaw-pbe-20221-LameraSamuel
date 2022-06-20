-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 16/06/2022 às 20:32
-- Versão do servidor: 10.4.24-MariaDB
-- Versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `iquest`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `area_atuacao`
--

CREATE TABLE `area_atuacao` (
  `Id_descricao` int(11) NOT NULL,
  `Descricao` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `login`
--

CREATE TABLE `login` (
  `Id_login` int(11) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Senha` varchar(45) NOT NULL,
  `Nome` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `opcao_para_marcar`
--

CREATE TABLE `opcao_para_marcar` (
  `Id_opcao` int(11) NOT NULL,
  `Descricao` varchar(45) NOT NULL,
  `Pergunta_Id_pergunta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pergunta`
--

CREATE TABLE `pergunta` (
  `Id_pergunta` int(11) NOT NULL,
  `Descricao` varchar(45) NOT NULL,
  `Area_atuacao_Id_descricao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `repostas`
--

CREATE TABLE `repostas` (
  `Area` varchar(255) NOT NULL,
  `Pontos` int(11) NOT NULL,
  `Usuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `area_atuacao`
--
ALTER TABLE `area_atuacao`
  ADD PRIMARY KEY (`Id_descricao`);

--
-- Índices de tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Id_login`);

--
-- Índices de tabela `opcao_para_marcar`
--
ALTER TABLE `opcao_para_marcar`
  ADD PRIMARY KEY (`Id_opcao`,`Pergunta_Id_pergunta`),
  ADD KEY `fk_Opcao_para_marcar_Pergunta_idx` (`Pergunta_Id_pergunta`);

--
-- Índices de tabela `pergunta`
--
ALTER TABLE `pergunta`
  ADD PRIMARY KEY (`Id_pergunta`,`Area_atuacao_Id_descricao`),
  ADD KEY `fk_Pergunta_Area_atuacao1_idx` (`Area_atuacao_Id_descricao`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `area_atuacao`
--
ALTER TABLE `area_atuacao`
  MODIFY `Id_descricao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `Id_login` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `opcao_para_marcar`
--
ALTER TABLE `opcao_para_marcar`
  MODIFY `Id_opcao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pergunta`
--
ALTER TABLE `pergunta`
  MODIFY `Id_pergunta` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `opcao_para_marcar`
--
ALTER TABLE `opcao_para_marcar`
  ADD CONSTRAINT `fk_Opcao_para_marcar_Pergunta` FOREIGN KEY (`Pergunta_Id_pergunta`) REFERENCES `pergunta` (`Id_pergunta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `pergunta`
--
ALTER TABLE `pergunta`
  ADD CONSTRAINT `fk_Pergunta_Area_atuacao1` FOREIGN KEY (`Area_atuacao_Id_descricao`) REFERENCES `area_atuacao` (`Id_descricao`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
