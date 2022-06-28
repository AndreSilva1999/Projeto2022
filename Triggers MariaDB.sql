-- TRIGGERS ------------------------------------------------------

#Inserir informações nas restantes tabelas, após inserir na tabela INTERACOES
#Remover  informações nas restantes tabelas, após remover da tabela INTERACOES
DELIMITER //
CREATE TRIGGER INSERT_ON_INTERACAO before INSERT FOR EACH ROW
ON interacao 
BEGIN
IF new.Tipo_de_Interacao_id_interacao not in tipo_de_interacao.id_interacao then insert into tipo_de_interacao(id_interacao,Nome)
	values(new.id_interacao,new.Nome)
    
IF new.Doenca_id_doenca_associada not in doenca.id_doenca_associada then insert into tipo_de_interacao(id_doenca_associada,Nome_Doenca)
	values(new.id_doenca_associada,new.Nome_Doenca)
    
IF new.id_Estirpes not in estirpes.id_Estirpes then insert into estirpes(id_Estirpes,Interação_estirpes)
	values(new.id_Estirpes,new.Interação_estirpes)

IF new.Modo_de_crescimento_id_Modo_de_crescimento not in modo_de_crescimento.id_Modo_de_crescimento then insert into modo_de_crescimento(id_Modo_de_crescimento,Modo_de_crescimento)
	values(new.id_Modo_de_crescimento,new.Modo_de_crescimento)

IF new.Método_id_Metodo not in método.id_Metodo then insert into estirpes(id_Metodo,Nome)
	values(new.id_Metodo,new.Nome)

IF new.Source_id_Source not in source.id_Source
	BEGIN
			RAISERROR ('Please, uptade source table before insert')
			ROLLBACK 
	END 

IF new.Target_id_Target not in source.id_Target
	BEGIN
			RAISERROR ('Please, uptade target table before insert')
			ROLLBACK 
	END 
END;

DELIMITER //

#Remover todas as linhas correspondentes a uma determinada SOURCE quando esse id foi eliminado
DELIMITER //
CREATE TRIGGER Remove_interaction before delete
ON source
FOR each row BEGIN
delete from interacao where( select * from interacao WHERE interacao.Source_id_Source =old.id_Source)
END;
DELIMITER ;

#Remover todas as linhas correspondentes a uma determinada Interacao quando esse id foi eliminado
DELIMITER //
CREATE TRIGGER Remove_interaction before delete
ON interacao
FOR each row BEGIN
delete from interacao where( select * from interacao WHERE interacao.Source_id_Source =old.Source_id_Source)
END;
DELIMITER ;

    
