-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Ago-2022 às 15:40
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `rifa`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comprador`
--

CREATE TABLE `comprador` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `CELULAR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `comprador`
--

INSERT INTO `comprador` (`ID`, `NOME`, `CELULAR`) VALUES
(1, 'Samuel', 996411339);

-- --------------------------------------------------------

--
-- Estrutura da tabela `numeros`
--

CREATE TABLE `numeros` (
  `ID` bigint(20) NOT NULL,
  `NUMERO` int(11) NOT NULL,
  `PROMOCAO_ID` int(11) NOT NULL,
  `VENDEDOR_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `numeros_comprados`
--

CREATE TABLE `numeros_comprados` (
  `COMPRADOR_ID` int(11) NOT NULL,
  `NUMEROS_ID` bigint(20) NOT NULL,
  `VENDA_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `premio`
--

CREATE TABLE `premio` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(45) NOT NULL,
  `DESCRICAO` varchar(255) NOT NULL,
  `VALOR` double NOT NULL,
  `PROMOCAO_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `promocao`
--

CREATE TABLE `promocao` (
  `ID` int(11) NOT NULL,
  `TITULO` varchar(45) NOT NULL,
  `DESCRICAO` varchar(255) DEFAULT NULL,
  `DATA_INICIO` date NOT NULL,
  `DATA_FIM` date NOT NULL,
  `DATA_SORTEIO` date NOT NULL,
  `ARRECADACAO` double NOT NULL,
  `VALOR_RIFA` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `resultado`
--

CREATE TABLE `resultado` (
  `ID` int(11) NOT NULL,
  `DATA` date NOT NULL,
  `PROMOCAO_ID` int(11) NOT NULL,
  `NUMEROS_ID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo`
--

CREATE TABLE `tipo` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipo`
--

INSERT INTO `tipo` (`ID`, `NOME`) VALUES
(11, 'Adiministrador'),
(12, 'Suporte'),
(13, 'Vendedor');

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `ID` int(11) NOT NULL,
  `DATA_VENDA` date NOT NULL,
  `VALOR` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedor`
--

CREATE TABLE `vendedor` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `CELULAR` int(11) NOT NULL,
  `LOGIN` varchar(16) NOT NULL,
  `SENHA` varchar(255) NOT NULL,
  `TIPO_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `vendedor`
--

INSERT INTO `vendedor` (`ID`, `NOME`, `CELULAR`, `LOGIN`, `SENHA`, `TIPO_ID`) VALUES
(1, 'Samuel', 996411339, 'Sam', '202cb962ac59075b964b07152d234b70', 13);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `comprador`
--
ALTER TABLE `comprador`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `numeros`
--
ALTER TABLE `numeros`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `premio`
--
ALTER TABLE `premio`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `promocao`
--
ALTER TABLE `promocao`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `resultado`
--
ALTER TABLE `resultado`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `comprador`
--
ALTER TABLE `comprador`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `numeros`
--
ALTER TABLE `numeros`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `premio`
--
ALTER TABLE `premio`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `promocao`
--
ALTER TABLE `promocao`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `resultado`
--
ALTER TABLE `resultado`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tipo`
--
ALTER TABLE `tipo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `venda`
--
ALTER TABLE `venda`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `vendedor`
--
ALTER TABLE `vendedor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
