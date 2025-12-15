CREATE OR REPLACE VIEW vw_somatorio_investido as
select sum(total_investido) as total_geral from corretora;

CREATE OR REPLACE VIEW vw_tipos_investimentos AS
SELECT
  tipo_de_investimento,
  SUM(total_investido) AS total_investido
FROM corretora
GROUP BY tipo_de_investimento;


CREATE OR REPLACE VIEW vw_soma_banco as 
SELECT 
	banco,
	SUM(total_investido) AS total_investido
FROM corretora
GROUP BY banco;