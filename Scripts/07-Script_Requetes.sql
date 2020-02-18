SELECT projet.description AS nom_projet, tache.nom AS nom_tache, salarie_tache.num_matricule
FROM projet
JOIN Tache
USING(id_projet)
JOIN Salarie_Tache
USING(id_tache)
ORDER BY nom_projet;

CREATE OR REPLACE PROCEDURE remplacer_date_fin_par_now()
AS $$
BEGIN
	UPDATE Salarie_Equipe
	SET date_fin = NOW()
	WHERE date_fin IS null;
END;
$$
LANGUAGE 'plpgsql';

DO $$
BEGIN
	CALL remplacer_date_fin_par_now();
END
$$;


SELECT prenom, nom, num_matricule, id_equipe, (date_fin - date_deb) AS nb_jours
FROM salarie_equipe
JOIN equipe
USING(id_equipe)
JOIN salarie
USING(num_matricule)
ORDER BY prenom, id_equipe;

SELECT prenom, nom, num_matricule, num_matricule2 AS chef
FROM Salarie;

SELECT DISTINCT salarie_tache.num_matricule, client.nom
FROM client
JOIN Projet
USING(id_client)
JOIN tache
USING(id_projet)
JOIN Salarie_Tache
USING(id_tache)
ORDER BY num_matricule;