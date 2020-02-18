CREATE OR REPLACE FUNCTION FCT01(num_salarie CHAR)
RETURNS INT
AS $$
BEGIN
	RETURN 
	(SELECT COUNT(*)
	FROM Salarie_Tache
	WHERE num_matricule = num_salarie);
END;
$$
LANGUAGE 'plpgsql';

SELECT FCT01('FFT52');

CREATE OR REPLACE FUNCTION FCT02(num_salarie CHAR, prenom VARCHAR, nom VARCHAR)
RETURNS VARCHAR
AS $$
DECLARE
	trigramme2 char(3) := '';
	trigramme_exists boolean := false;
	i int := 2;
BEGIN
	WHILE not trigramme_exists LOOP
		trigramme2 := UPPER(SUBSTRING(prenom, 1, 1)) || UPPER(SUBSTRING(nom, 1, 1)) || UPPER(SUBSTRING(nom, i, 1));
		IF ((SELECT COUNT(*) FROM Salarie WHERE Salarie.trigramme = trigramme2) != 0) THEN
			i := i+1;
		ELSE
			trigramme_exists := true;
		END IF;
	END LOOP;
	RETURN trigramme2;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION FCT02(num_salarie CHAR, prenom VARCHAR, nom VARCHAR)
RETURNS VARCHAR
AS $$
DECLARE
	trigramme2 char(3) := '';
	select_count int;
	i int := 2;
BEGIN
	trigramme2 := UPPER(SUBSTRING(prenom, 1, 1)) || UPPER(SUBSTRING(nom, 1, 1)) || UPPER(SUBSTRING(nom, i, 1));
	select_count := (SELECT COUNT(*) FROM Salarie WHERE trigramme = trigramme2);
	WHILE select_count > 0 LOOP
		i := i+1;
		IF (i > char_length(nom)) THEN 
			trigramme2 := UPPER(SUBSTRING(prenom, 1, 1)) || UPPER(SUBSTRING(nom, 1, 1)) || ' ';
			EXIT;
		END IF;
		trigramme2 := UPPER(SUBSTRING(prenom, 1, 1)) || UPPER(SUBSTRING(nom, 1, 1)) || UPPER(SUBSTRING(nom, i, 1));
		select_count := (SELECT COUNT(*) FROM Salarie WHERE trigramme = trigramme2);
	END LOOP;
	RETURN trigramme2;
END;
$$
LANGUAGE 'plpgsql';

SELECT FCT02('SPL39','Jean','Valjean');

CREATE OR REPLACE FUNCTION PRO01(num_salarie CHAR)
RETURNS int
AS $$
BEGIN
	RETURN (SELECT id_equipe
			FROM salarie_equipe
			WHERE num_matricule = num_salarie
			ORDER BY date_fin DESC
			LIMIT 1);
END;
$$
LANGUAGE 'plpgsql';

SELECT PRO01('AAF57');