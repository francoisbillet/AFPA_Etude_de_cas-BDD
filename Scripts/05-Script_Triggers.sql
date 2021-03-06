CREATE OR REPLACE FUNCTION create_task()
RETURNS TRIGGER AS 
$$
BEGIN
    INSERT INTO Tache
    VALUES(DEFAULT, 'Initialisation', '', NEW.id_projet);
	RETURN NEW;
END
$$
LANGUAGE 'plpgsql';

DROP TRIGGER IF EXISTS TRG01 ON Projet CASCADE;

CREATE TRIGGER TRG01 AFTER
INSERT ON Projet
FOR EACH ROW
EXECUTE FUNCTION create_task();

-- SELECT * FROM tache;
-- INSERT INTO Projet VALUES (DEFAULT, 'test', 'test', '2018-05-21', '2019-02-01', 'FFT52', 3);
-- SELECT * FROM tache;

CREATE OR REPLACE FUNCTION upper_case_task()
RETURNS TRIGGER AS
$$
BEGIN
	NEW.nom = UPPER(NEW.nom);
	RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';
	
DROP TRIGGER IF EXISTS TRG02 ON Tache CASCADE;

CREATE TRIGGER TRG02 BEFORE 
INSERT OR UPDATE ON Tache
FOR EACH ROW
EXECUTE FUNCTION upper_case_task();

-- INSERT INTO tache VALUES(DEFAULT, 'test', 'bqsdfla', 2);
-- SELECT * FROM tache WHERE description = 'bqsdfla';

CREATE OR REPLACE FUNCTION add_trigramme()
RETURNS TRIGGER AS
$$
DECLARE
	test varchar;
	nom varchar;
	prenom varchar;
BEGIN
	NEW.trigramme = FCT02(NEW.num_matricule, NEW.prenom, NEW.nom);
	RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';

DROP TRIGGER IF EXISTS TRG03 ON Salarie CASCADE;

CREATE TRIGGER TRG03 BEFORE
INSERT OR UPDATE ON Salarie
FOR EACH ROW
EXECUTE FUNCTION add_trigramme();