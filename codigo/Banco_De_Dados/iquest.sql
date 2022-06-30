-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 30/06/2022 às 12:16
-- Versão do servidor: 5.7.38-cll-lve
-- Versão do PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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

--
-- Despejando dados para a tabela `area_atuacao`
--

INSERT INTO `area_atuacao` (`Id_descricao`, `Descricao`) VALUES
(1, 'FRONT END'),
(2, 'BACK END'),
(3, 'FULL STACK'),
(4, 'DEV OPS'),
(5, 'SEGURANCA'),
(6, 'REDES');

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

--
-- Despejando dados para a tabela `login`
--

INSERT INTO `login` (`Id_login`, `Email`, `Senha`, `Nome`) VALUES
(1, 'Lamerasamuel@Gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Samuel Lamera Portes Carneiro'),
(2, 'thiago@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Thiago Lacerda'),
(3, 'icarostarling@hotmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Icaro'),
(4, 'vamo@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'vamo'),
(5, 'ava@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'ava'),
(6, 'teste@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'teste'),
(7, 'maicon@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'maicon'),
(8, '123@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '123'),
(9, 'aaa@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Gustavo'),
(10, 'caio@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'caio'),
(11, 'gtvantonio@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Gustavo'),
(12, 'questzinho@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'questzinho'),
(13, 'iquest@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'questzinho'),
(14, 'iquest@hotmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'iquest'),
(15, 'ader@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'ader'),
(16, 'bruno@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'bruno'),
(17, 'gara@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'gara'),
(18, 'vitor@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Vitoria Larissa Rodrigues Matias Pinto'),
(19, 'kaikyleles@gmail.com', '3decd49a6c6dce88c16a85b9a8e42b51aa36f1e2', 'Kaiky Leles Costa de Rezende ');

-- --------------------------------------------------------

--
-- Estrutura para tabela `opcao_para_marcar`
--

CREATE TABLE `opcao_para_marcar` (
  `Id_opcao` int(11) NOT NULL,
  `Descricao` varchar(255) NOT NULL,
  `Pergunta_Id_pergunta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `opcao_para_marcar`
--

INSERT INTO `opcao_para_marcar` (`Id_opcao`, `Descricao`, `Pergunta_Id_pergunta`) VALUES
(1, 'Design do Site', 1),
(2, 'O funcionamento por tras de cada acao feita no site', 1),
(3, 'O funcionamento geral do site, relacionando design e logica.', 1),
(4, 'Suporte ao usuario', 1),
(5, 'Seguranca do site', 1),
(6, 'Conexao do site', 1),
(7, 'Arquiteto', 2),
(8, 'Designer de interiores', 2),
(9, 'Projeto (Empreiteiro)', 2),
(10, 'Chefe da obra', 2),
(11, 'Responsavel pela seguranca do trabalho', 2),
(12, 'Eletricista', 2),
(13, 'Detalhista', 3),
(14, 'Comunicativa', 3),
(15, 'Logica', 3),
(16, 'Versatil', 3),
(17, 'Segura', 3),
(18, 'Concentrada', 3),
(19, 'Design de interface', 4),
(20, 'Algoritmos e estruturas de dados', 4),
(21, 'Metodologia de desenvolvimento de software', 4),
(22, 'Algoritmos e estruturas de dados e design de interface', 4),
(23, 'Privacidade e protecao de dados', 4),
(24, 'Infraestrutura de Redes de Computadores', 4),
(25, 'Design intuitivo e bem desenhado', 5),
(26, 'Armazenamento e processamento de dados', 5),
(27, 'Interface rapida e automatizada', 5),
(28, 'Garantir a seguranca das informacoes ', 5),
(29, 'Eficiencia em tudo que se propoe a fazer', 5),
(30, 'Funcionamento do fisico da aplicacao', 5),
(31, 'Ajudando as pessoas com manutencao de redes.', 6),
(32, 'Desenvolvendo aplicativos, jogos, sites e ate sistemas. ', 6),
(33, 'Administrando dados', 6),
(34, 'Utilizando softwares e garantindo o melhor funcionamento deles.', 6),
(35, 'Cuidando das informacoes confidenciais de usuarios da internet.', 6),
(36, 'Desenvolvendo aplicativos, jogos, sites e administrando dados.', 6),
(37, 'Procuraria possiveis falhas de conexao.', 7),
(38, 'Tentaria mudar o layout e suas funcionalidades.', 7),
(39, 'Consultaria a base de dados e procuraria possiveis erros.', 7),
(40, 'Avaliaria se todas as informacoes dos usuarios estao seguras. ', 7),
(41, 'Encontraria o erro e aplicaria atualizacoes para o software.', 7),
(42, 'Encontraria o problema do sistema utilizado e levaria a solucao.', 7),
(43, 'Sou observador', 8),
(44, 'Sou criativo', 8),
(45, 'Sou pratico e rapido', 8),
(46, 'Sou cauteloso', 8),
(47, 'Sou eficaz na resolucao de problemas', 8),
(48, 'Sou analitico', 8),
(49, 'Durante a defesa, ronda pelo mapa em busca de inimigos.', 9),
(50, 'Aquele que conquista o territorio.', 9),
(51, 'Aquele que, durante a defesa protege o objetivo.', 9),
(52, 'Aquele que auxilia o time.', 9),
(53, 'Aquele que planeja a estrategia do time.', 9),
(54, 'Aquele que, durante a defesa, chama a atencao do ataque.', 9),
(55, 'Diretor.', 10),
(56, 'Seguranca de camarim.', 10),
(57, 'Figurinista.\r\n', 10),
(58, 'Produtor.', 10),
(59, 'Roterista.\r\n', 10),
(60, 'Ator', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pergunta`
--

CREATE TABLE `pergunta` (
  `Id_pergunta` int(11) NOT NULL,
  `Descricao` varchar(255) NOT NULL,
  `Area_atuacao_Id_descricao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `pergunta`
--

INSERT INTO `pergunta` (`Id_pergunta`, `Descricao`, `Area_atuacao_Id_descricao`) VALUES
(1, 'Em um site, qual parte e a mais importante para voce?', 1),
(2, 'Se voce pudesse escolher entre os seguintes papeis em uma obra, qual seria?', 2),
(3, 'Voce se considera uma pessoa mais:', 3),
(4, 'Qual dessas disciplinas te chama mais a atencao? ', 4),
(5, 'Se voce fosse criar uma aplicacao e pudesse escolher apenas uma caracteristica principal, qual seria?', 5),
(6, 'Quando voce pensa na sua profissao, voce se imagina:', 6),
(7, 'Voce esta no computador e o software apresenta problemas de funcionamento. Qual solucao voce apresentaria:', 1),
(8, 'Dentre as opcoes abaixo, qual voce acredita que seja a sua melhor qualidade:', 2),
(9, 'Voce esta jogando um jogo FPS(First-person shooter), qual o papel que mais te identifica?', 3),
(10, 'Voce esta ajudando na producao de um filme, qual papel mais te atrai?', 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `respostas`
--

CREATE TABLE `respostas` (
  `Area` varchar(255) NOT NULL,
  `Pontos` int(11) NOT NULL,
  `Usuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `respostas`
--

INSERT INTO `respostas` (`Area`, `Pontos`, `Usuario`) VALUES
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Full', 1, 'Samuel Lamera Portes Carneiro'),
('DevOps', 1, 'Samuel Lamera Portes Carneiro'),
('Seguranca', 1, 'Samuel Lamera Portes Carneiro'),
('Back', 1, 'Samuel Lamera Portes Carneiro'),
('Redes', 1, 'Samuel Lamera Portes Carneiro'),
('Back', 1, 'Samuel Lamera Portes Carneiro'),
('Full', 1, 'Samuel Lamera Portes Carneiro'),
('DevOps', 1, 'Samuel Lamera Portes Carneiro'),
('Seguranca', 1, 'Samuel Lamera Portes Carneiro'),
('Redes', 1, 'Samuel Lamera Portes Carneiro'),
('DevOps', 1, 'Samuel Lamera Portes Carneiro'),
('Front', 1, 'Vitoria Larissa Rodrigues Matias Pinto'),
('Front', 1, 'Vitoria Larissa Rodrigues Matias Pinto'),
('Front', 1, 'Vitoria Larissa Rodrigues Matias Pinto'),
('Front', 1, 'Vitoria Larissa Rodrigues Matias Pinto'),
('Front', 1, 'Vitoria Larissa Rodrigues Matias Pinto'),
('Front', 1, 'gara'),
('Back', 1, 'gara'),
('Front', 1, 'Vitoria Larissa Rodrigues Matias Pinto'),
('Full', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'Vitoria Larissa Rodrigues Matias Pinto'),
('Front', 1, 'Vitoria Larissa Rodrigues Matias Pinto'),
('Front', 1, 'Vitoria Larissa Rodrigues Matias Pinto'),
('Front', 1, 'Vitoria Larissa Rodrigues Matias Pinto'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'Thiago Lacerda'),
('Front', 1, 'Thiago Lacerda'),
('DevOps', 1, 'Thiago Lacerda'),
('Full', 1, 'Thiago Lacerda'),
('Back', 1, 'Thiago Lacerda'),
('Back', 1, 'Thiago Lacerda'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Back', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Seguranca', 1, 'gara'),
('Front', 1, 'gara'),
('Seguranca', 1, 'gara'),
('Front', 1, 'gara'),
('Back', 1, 'gara'),
('Back', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('Front', 1, 'gara'),
('DevOps', 1, 'gara'),
('Full', 1, 'gara'),
('Back', 1, 'Kaiky Leles Costa de Rezende '),
('Front', 1, 'Kaiky Leles Costa de Rezende '),
('Front', 1, 'Kaiky Leles Costa de Rezende '),
('Front', 1, 'Kaiky Leles Costa de Rezende '),
('Front', 1, 'Kaiky Leles Costa de Rezende '),
('DevOps', 1, 'Kaiky Leles Costa de Rezende '),
('Redes', 1, 'Kaiky Leles Costa de Rezende '),
('Seguranca', 1, 'Kaiky Leles Costa de Rezende '),
('Back', 1, 'Kaiky Leles Costa de Rezende '),
('Front', 1, 'Kaiky Leles Costa de Rezende '),
('Front', 1, 'ader'),
('Front', 1, 'ader'),
('Back', 1, 'ader'),
('Back', 1, 'ader'),
('DevOps', 1, 'ader'),
('Seguranca', 1, 'ader'),
('DevOps', 1, 'ader'),
('Front', 1, 'bruno'),
('Front', 1, 'bruno'),
('Front', 1, 'bruno'),
('Front', 1, 'bruno'),
('Front', 1, 'bruno'),
('Front', 1, 'bruno'),
('Front', 1, 'bruno'),
('Front', 1, 'bruno'),
('Front', 1, 'bruno'),
('Front', 1, 'bruno');

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
  MODIFY `Id_descricao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `Id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `opcao_para_marcar`
--
ALTER TABLE `opcao_para_marcar`
  MODIFY `Id_opcao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de tabela `pergunta`
--
ALTER TABLE `pergunta`
  MODIFY `Id_pergunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
