SELECT * FROM interacao
WHERE interaçao.Source_id_Source= 1;

SELECT 
    *
FROM
    interacao
WHERE
    interacao.Ano = 2015;

SELECT COUNT(*)
FROM interacao;

SELECT 
    *
FROM
    interacao,
    source,
    organismo
WHERE
    interacao.Source_id_Source = source.id_Source
        AND source.Organismo_id_Organismo = organismo.id_Organismo
        AND organismo.Nome = 'P. aeruginosa';

SELECT 
    *
FROM
    interacao,
    source,
    organismo
WHERE
    interacao.Source_id_Source = source.id_Source
        AND source.Organismo_id_Organismo = organismo.id_Organismo
        AND organismo.Nome = 'S. aureus';

SELECT 
    *
FROM
    interacao,
    source,
    organismo
WHERE
    interacao.Source_id_Source = source.id_Source
        AND source.Organismo_id_Organismo = organismo.id_Organismo
        AND organismo.Nome = 'C. albicans';


SELECT 
    interacao.Ano, Observacoes
FROM
    interacao,
    source,
    type
WHERE
    type.Nome = 'Virulence Factor'
        AND type.id_Type = source.Type_id_Type
        AND source.id_Source = interacao.Source_id_Source;

SELECT 
    interacao.Ano, Observacoes
FROM
    interacao,
    source,
    type
WHERE
    type.Nome = 'QS System'
        AND type.id_Type = source.Type_id_Type
        AND source.id_Source = interacao.Source_id_Source;


SELECT 
    interacao.Ano, Observacoes
FROM
    interacao,
    source,
    type
WHERE
    type.Nome = 'QS Molecule'
        AND type.id_Type = source.Type_id_Type
        AND source.id_Source = interacao.Source_id_Source;

SELECT 
    interacao.Ano, Observacoes
FROM
    interacao,
    source,
    type
WHERE
    type.Nome = 'Other'
        AND type.id_Type = source.Type_id_Type
        AND source.id_Source = interacao.Source_id_Source;
        
        
SELECT DISTINCT
    interacao.Ano, Observacoes
FROM
    interacao,
    entidade,
    source,
    target
WHERE
    entidade.Entidade = 'PasP'
        AND entidade.id_Entidade = source.Entidade_id_Entidade
        AND interacao.Source_id_Source = source.id_Source
        OR entidade.Entidade = 'PasP'
        AND target.Entidade_id_Entidade = entidade.id_Entidade
        AND interacao.Target_id_Target = target.id_Target
