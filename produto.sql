-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04/06/2024 às 16:30
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mkm`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `idPro` int(11) NOT NULL,
  `nomePro` varchar(80) NOT NULL,
  `valorCompraPro` decimal(13,2) DEFAULT 0.00,
  `valorVendaPro` decimal(13,2) DEFAULT 0.00,
  `qtdEstoquePro` float(10,3) DEFAULT 0.000,
  `imagemPro` varchar(100) DEFAULT NULL,
  `qtdEstoqueMinimoPro` float(10,3) DEFAULT 0.000,
  `codigoPro` varchar(50) DEFAULT NULL,
  `fornecedor_idFor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`idPro`, `nomePro`, `valorCompraPro`, `valorVendaPro`, `qtdEstoquePro`, `imagemPro`, `qtdEstoqueMinimoPro`, `codigoPro`, `fornecedor_idFor`) VALUES
(1, 'Saia Xadrez', 40.00, 89.00, 200.000, 'img/saia1.jpg', 100.000, '15522', 14),
(2, 'Saia Preta', 55.00, 109.00, 159.000, 'img/saia3.jpg', 90.000, '15528', 13),
(3, 'Blusa Canelada', 19.00, 39.99, 500.000, 'img/blusa1.jpg', 80.000, NULL, 14),
(4, 'Blusa Canelada', 19.00, 39.99, 500.000, 'img/blusa1.jpg', 50.000, NULL, 14),
(5, 'Blusa Estampada', 23.50, 49.99, 400.000, 'img/blusa2.jpg', 80.000, NULL, 14),
(6, 'Blusa Branca', 29.00, 69.00, 350.000, 'img/blusa3.jpg', 70.000, NULL, 13),
(7, 'Blusa Branca', 29.99, 69.99, 350.000, 'img/blusa3.jpg', 70.000, NULL, 13),
(8, 'Blusa Creme', 19.00, 59.00, 600.000, 'img/blusa4.jpg', 80.000, NULL, 13),
(9, 'Blusa Creme', 19.00, 59.99, 600.000, 'img/blusa4.jpg', 80.000, NULL, 13),
(10, 'Vestido Azul', 29.00, 99.00, 450.000, 'img/vest2.jpg', 65.000, NULL, 13),
(11, 'Vestido Azul', 29.99, 99.99, 450.000, 'img/vest2.jpg', 65.000, NULL, 13),
(12, 'Vestido Longo Amarelo', 50.99, 109.99, 500.000, 'img/vest1.jpg', 80.000, NULL, 10),
(13, 'Vestido Florido', 39.90, 99.99, 400.000, 'img/vest3.jpg', 90.000, NULL, 15),
(14, 'Vestido Vermelho', 89.00, 169.99, 700.000, 'img/vest4.jpg', 100.000, NULL, 14),
(15, 'Vestido Vermelho', 89.90, 169.99, 700.000, 'img/vest4.jpg', 100.000, NULL, 14),
(16, 'Calça Preta', 79.00, 199.00, 500.000, 'img/c1.jpg', 80.000, NULL, 14),
(17, 'Calça Preta', 79.90, 199.99, 500.000, 'img/c1.jpg', 80.000, NULL, 14),
(18, 'Calça Jeans', 45.00, 159.99, 720.000, 'img/c2.jpg', 99.000, NULL, 14),
(19, 'Calça Cargo', 50.00, 189.99, 500.000, 'img/c3.jpg', 75.000, NULL, 10),
(20, 'Calça Tactel', 59.99, 199.99, 600.000, 'img/c4.jpg', 80.000, NULL, 10),
(21, 'Saia Mid', 39.00, 149.00, 650.000, 'img/saia4.jpg', 55.000, NULL, 14),
(22, 'Saia Mid', 39.90, 149.99, 650.000, 'img/saia4.jpg', 55.000, NULL, 14),
(23, 'Saia Cáqui', 32.00, 99.99, 400.000, 'img/saia2.jpg', 60.000, NULL, 10),
(24, 'Saia Cáqui', 32.90, 99.99, 400.000, 'img/saia2.jpg', 60.000, NULL, 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idPro`),
  ADD KEY `fk_produto_fornecedor1_idx` (`fornecedor_idFor`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `idPro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `fk_produto_fornecedor1` FOREIGN KEY (`fornecedor_idFor`) REFERENCES `fornecedor` (`idFor`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
