CREATE PROCEDURE USP_CARGA_DIM_RESERVA

AS

-- CRIA TABELA CASO N�O EXISTA

IF OBJECT_ID('DIM_RESERVAS') IS NULL

BEGIN    
	 
	CREATE TABLE DIM_RESERVAS
	(
	   
	   SK_RESERVA	    NUMERIC(15) PRIMARY KEY
	 , ID_CLIENTE       NUMERIC(15)
	 , NOME_CLIENTE	    VARCHAR(60)
	 , CPF              VARCHAR(14)
	 , DATA_NASCIMENTO  DATE	 
	)

END


MERGE DIM_RESERVAS D
USING LIVRARIA_STG.DBO.VW_DIM_RESERVAS O ON D.SK_RESERVA = O.ID_RESERVA

-- QUANDO COINCIDIR

WHEN MATCHED THEN UPDATE
SET ID_CLIENTE      = O.ID_CLIENTE
  , NOME_CLIENTE	= O.NOME_CLIENTE
  , CPF				= O.CPF
  , DATA_NASCIMENTO	= O.DATA_NASCIMENTO


WHEN NOT MATCHED BY TARGET THEN INSERT
(
   SK_RESERVA	  
 , ID_CLIENTE     
 , NOME_CLIENTE	  
 , CPF            
 , DATA_NASCIMENTO
 )

VALUES
(
   O.ID_RESERVA
 , O.ID_CLIENTE
 , O.NOME_CLIENTE
 , O.CPF
 , O.DATA_NASCIMENTO
);
