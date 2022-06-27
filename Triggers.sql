-- TRIGGERS ------------------------------------------------------

#Inserir informações nas restantes tabelas, após inserir na tabela INTERACOES
#Remover  informações nas restantes tabelas, após remover da tabela INTERACOES
DELIMITER $$
CREATE TRIGGER INSERT_ON_INTERACAO AFTER INSERT 
ON interacao
FOR each row 
BEGIN
insert FROM doenca 
WHERE id_doenca_associada= new.id_doenca_associada 


END;
DELIMITER ;

#Remover todas as linhas correspondentes a uma determinada SOURCE quando esse id foi eliminado
DELIMITER $$
CREATE TRIGGER Remove_interaction AFTER delete
ON source
FOR each row BEGIN
delete from interacao where( select 1 from interacao WHERE interacao.Source_id_Source =old.Source_id_Source)
END; 
DELIMITER ;