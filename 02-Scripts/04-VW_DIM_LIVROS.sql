CREATE VIEW VW_DIM_LIVROS

AS

SELECT 0	                    AS ID_LIVRO
     , UPPER( 'N�o Informado')  AS NOME_LIVRO
     , UPPER( 'N�o Informado')  AS NOME_EDITORA
     , UPPER( 'N�o Informado')  AS NOME_AUTOR

UNION ALL

SELECT ID_LIVRO
     , NOME_LIVRO
     , UPPER( COALESCE( NOME_EDITORA , 'N�o Informado' ) )
     , NOME_AUTOR 
  FROM STG_LIVROS