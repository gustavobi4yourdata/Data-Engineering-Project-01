CREATE PROCEDURE USP_CARGA_FULL

AS



EXEC USP_CARGA_DIM_RESERVA
EXEC USP_CARGA_DIM_LIVRO
EXEC USP_CARGA_FATO_LIVRARIA 0

