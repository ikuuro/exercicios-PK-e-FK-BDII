-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Set-2024 às 03:31
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_industria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `codProduto` int(11) NOT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `unidade` varchar(2) DEFAULT NULL,
  `qtdeEstoque` double DEFAULT NULL,
  `caracteristicas` varchar(50) DEFAULT NULL,
  `codfornecedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbfornecedores`
--

CREATE TABLE `tbfornecedores` (
  `codFornecedor` int(11) NOT NULL,
  `razaoSocial` varchar(45) DEFAULT NULL,
  `nomeFantasia` varchar(50) DEFAULT NULL,
  `CNPJ` varchar(20) DEFAULT NULL,
  `endereco` varchar(900) DEFAULT NULL,
  `numero` varchar(5) DEFAULT NULL,
  `bairro` varchar(20) DEFAULT NULL,
  `cidade` varchar(20) DEFAULT NULL,
  `telefone` varchar(18) DEFAULT NULL,
  `nomeContato` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbfornecedores`
--

INSERT INTO `tbfornecedores` (`codFornecedor`, `razaoSocial`, `nomeFantasia`, `CNPJ`, `endereco`, `numero`, `bairro`, `cidade`, `telefone`, `nomeContato`, `email`) VALUES
(1, 'Comércio de Papéis Yuki LTDA.', 'Yuki Papéis', '03.847.655/0001-98', 'Rua das Ameixeiras', '21', 'Penha', 'São Paulo', '1126956398', 'Sr. Pedro', 'yuki@provedor.com.br'),
(2, 'Comércio de Papéis ABC LTDA.', 'Papelaria ABC', '14.218.835/0001-27', 'Av. Iguapé', '1698', 'Tatuapé', 'São Paulo', '1123699685', 'Sra. Bete', 'p_ABC@provedor.com.br'),
(3, 'Distribuidora Kalunga', 'Kalunga', '23.222.835/0001-07', 'Av Rio das Pedras', '1752', 'Itaquera', 'São Paulo', '1125969586', 'Sr. Marcos', 'laçumga@provedor.com.br'),
(4, 'Indústria e Comércio Nobel S.A', 'Nobel', '07.256.898/0001-10', 'Rua das Bolhas', '900', 'Itaquera', 'São Paulo', '1124756598', 'Sr. Paulo', 'nobel@provedor.com.br');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`codProduto`),
  ADD KEY `fk_codfornecedor` (`codfornecedor`);

--
-- Índices para tabela `tbfornecedores`
--
ALTER TABLE `tbfornecedores`
  ADD PRIMARY KEY (`codFornecedor`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `codProduto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbfornecedores`
--
ALTER TABLE `tbfornecedores`
  MODIFY `codFornecedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `fk_codfornecedor` FOREIGN KEY (`codfornecedor`) REFERENCES `tbfornecedores` (`codFornecedor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
