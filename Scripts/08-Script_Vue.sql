CREATE OR REPLACE VIEW VUE01 AS
	SELECT salarie.nom, prenom, num_tel, adr_mail, id_div, division.nom AS nom_div
	FROM salarie
	JOIN division
	USING(id_div);
	
SELECT * FROM VUE01;