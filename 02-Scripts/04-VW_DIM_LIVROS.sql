CREATE VIEW VW_DIM_LIVROS

AS

SELECT 0	                    AS ID_LIVRO
     , UPPER( 'Não Informado')  AS NOME_LIVRO
     , UPPER( 'Não Informado')  AS NOME_EDITORA
     , UPPER( 'Não Informado')  AS NOME_AUTOR

UNION ALL

SELECT ID_LIVRO
     , NOME_LIVRO
     , UPPER( COALESCE( NOME_EDITORA , 'Não Informado' ) )
     , NOME_AUTOR 
  FROM STG_LIVROS