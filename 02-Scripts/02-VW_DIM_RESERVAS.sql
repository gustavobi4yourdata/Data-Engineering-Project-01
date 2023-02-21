CREATE VIEW VW_DIM_RESERVAS

AS

SELECT 0                        AS ID_RESERVA
	 , 0                        AS ID_CLIENTE
	 , UPPER( 'Não Informado' ) AS NOME_CLIENTE
	 , UPPER( 'Não Informado' ) AS CPF
	 , '01/01/1900'            AS DATA_NASCIMENTO
	 

UNION ALL
	 
SELECT ID_RESERVA
     , ID_CLIENTE
     , UPPER( NOME_CLIENTE )
     , CPF
     , DATA_NASCIMENTO
  FROM STG_RESERVAS



