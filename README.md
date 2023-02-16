<h1>Design e Implementação de Data Mart com T-SQL</h1>

## [ ⚠️ ]  Execute as instruções na seguinte ordem: 

1) Crie os bancos de dados: 00-CREATE DATABASE
2) Recupere o Banco de Dados LIVRARIA_PROD

## Execute as instruções no banco dados LIVARIA_STG

- 01-Procedure USP_CARGA_STG_RESERVA
- 02-VW_DIM_RESERVAS
- 03-Procedure USP_CARGA_STG_LIVRO
- 04-VW_DIM_LIVROS
- 05-Procedure USP_CARGA_STG_LIVRARIA
- 06-VW_FATO_LIVRARIA
- 07-Procedure USP_STG_CARGA_FULL
- 08-Procedure USP_STG_CARGA_INCREMENTAL
- 09-Procedure USP_LIMPAR_STG

## Execute as instruções no banco de dados LIVRARIA_DM

- 10-Procedure USP_CARGA_DIM_RESERVA
- 11-Procedure USP_CARGA_DIM_LIVRO
- 12-Procedure USP_CARGA_FATO_RESERVA
- 13-Procedure USP_CARGA_FULL
- 14-Procedure USP_CARGA_INCREMENTAL

## Agendamento e automação: SQL Server Agent

### Carga FULL
1) Crie o JOB "Processamento DM Carga Full"
- Etapa 1: Carregar STG - Comando EXEC USP_CARGA_FULL
- Etapa 2: Carregar DM - Comando EXEC USP_CARGA_FULL
- Etapa 3: Limpar STG - Comando EXEC USP_LIMPAR_STG

### Carga Incremental

2) Crie o JOB "Processamento DM Carga Incremental"
- Etapa 1: Carregar STG - Comando EXEC USP_STG_CARGA_INCREMENTAL
- Etapa 2: Carregar DM - Comando EXEC USP_CARGA_INCREMENTAL
- Etapa 3: Limpar STG - Comando EXEC USP_LIMPAR_STG
