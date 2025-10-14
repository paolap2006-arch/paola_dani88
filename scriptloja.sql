
-- -----------------------------------------------------
-- Table `loja_online`.`Produto_Características`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loja_online`.`Produto_Características` (
  `produto` INT NOT NULL,
  `caracteristica` INT NOT NULL,
  `id_pro_carac` INT NOT NULL,
  INDEX `fk_Produto_Características_Produto2_idx` (`produto` ASC) ,
  INDEX `fk_Produto_Características_Características2_idx` (`caracteristica` ASC) ,
  PRIMARY KEY (`id_pro_carac`),
  CONSTRAINT `fk_Produto_Características_Produto2`
    FOREIGN KEY (`produto`)
    REFERENCES `loja_online`.`Produto` (`idPro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Produto_Características_Características2`
    FOREIGN KEY (`caracteristica`)
    REFERENCES `loja_online`.`Características` (`idCarac`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `loja_online`.`Loja`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loja_online`.`Loja` (
  `idLoja` INT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `endereço` VARCHAR(200) NULL,
  `telefone` VARCHAR(20) NULL,
  PRIMARY KEY (`idLoja`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `loja_online`.`Estoque`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loja_online`.`Estoque` (
  `quantidade` INT NOT NULL,
  `loja` INT NOT NULL,
  `Produto` INT NOT NULL,
  `idEstoque` INT NULL,
  INDEX `fk_Estoque_Loja1_idx` (`loja` ASC) ,
  INDEX `fk_Estoque_Produto1_idx` (`Produto` ASC) ,
  PRIMARY KEY (`idEstoque`),
  CONSTRAINT `fk_Estoque_Loja1`
    FOREIGN KEY (`loja`)
    REFERENCES `loja_online`.`Loja` (`idLoja`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Estoque_Produto1`
    FOREIGN KEY (`Produto`)
    REFERENCES `loja_online`.`Produto` (`idPro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
