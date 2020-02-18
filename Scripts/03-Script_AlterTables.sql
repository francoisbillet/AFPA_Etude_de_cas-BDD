-- Clés primaires :

ALTER TABLE Client 
  ADD CONSTRAINT pk_client PRIMARY KEY (
    id_client)  ;
	
ALTER TABLE Contact 
  ADD CONSTRAINT pk_contact PRIMARY KEY (
    id_contact)  ;
	
ALTER TABLE Division 
  ADD CONSTRAINT pk_division PRIMARY KEY (
    id_div)  ;
	
ALTER TABLE Equipe 
  ADD CONSTRAINT pk_equipe PRIMARY KEY (
    id_equipe)  ;
	
ALTER TABLE Fonction 
  ADD CONSTRAINT pk_fonction PRIMARY KEY (
    id_fonction)  ;
	
ALTER TABLE Materiel 
  ADD CONSTRAINT pk_materiel PRIMARY KEY (
    id_materiel)  ;
	
ALTER TABLE Materiel_Materiel 
  ADD CONSTRAINT pk_materiel_materiel PRIMARY KEY (
    id_materiel, id_materiel2)  ;
	
ALTER TABLE Pole 
  ADD CONSTRAINT pk_pole PRIMARY KEY (
    id_pole)  ;
	
ALTER TABLE Projet 
  ADD CONSTRAINT pk_projet PRIMARY KEY (
    id_projet)  ;
	
ALTER TABLE Role 
  ADD CONSTRAINT pk_role PRIMARY KEY (
    id_role)  ;
	
ALTER TABLE Salarie 
  ADD CONSTRAINT pk_salarie PRIMARY KEY (
    num_matricule)  ;
	
ALTER TABLE Salarie_Equipe 
  ADD CONSTRAINT pk_salarie_equipe PRIMARY KEY (
    num_matricule, id_equipe)  ;
	
ALTER TABLE Salarie_Tache 
  ADD CONSTRAINT pk_salarie_tache PRIMARY KEY (
    id_tache, num_matricule)  ;
	
ALTER TABLE Tache 
  ADD CONSTRAINT pk_tache PRIMARY KEY (
    id_tache)  ;


-- Clés étrangères :

ALTER TABLE Materiel
  ADD CONSTRAINT fk_materiel 
    FOREIGN KEY (num_matricule)
      REFERENCES Salarie;

ALTER TABLE Pole
  ADD CONSTRAINT fk_pole 
    FOREIGN KEY (id_div)
      REFERENCES Division;

ALTER TABLE Tache
  ADD CONSTRAINT fk_tache 
    FOREIGN KEY (id_projet)
      REFERENCES Projet;

ALTER TABLE Contact
  ADD CONSTRAINT fk1_contact 
    FOREIGN KEY (id_client)
      REFERENCES Client;

ALTER TABLE Equipe
  ADD CONSTRAINT fk1_equipe 
    FOREIGN KEY (id_pole)
      REFERENCES Pole;

ALTER TABLE Materiel_Materiel
  ADD CONSTRAINT fk1_materiel_materiel 
    FOREIGN KEY (id_materiel)
      REFERENCES Materiel;

ALTER TABLE Projet
  ADD CONSTRAINT fk1_projet 
    FOREIGN KEY (num_matricule)
      REFERENCES Salarie;

ALTER TABLE Salarie
  ADD CONSTRAINT fk1_salarie 
    FOREIGN KEY (id_div)
      REFERENCES Division;

ALTER TABLE Salarie_Equipe
  ADD CONSTRAINT fk1_salarie_equipe 
    FOREIGN KEY (num_matricule)
      REFERENCES Salarie;

ALTER TABLE Salarie_Tache
  ADD CONSTRAINT fk1_salarie_tache 
    FOREIGN KEY (id_tache)
      REFERENCES Tache;

ALTER TABLE Contact
  ADD CONSTRAINT fk2_contact 
    FOREIGN KEY (id_role)
      REFERENCES Role;

ALTER TABLE Equipe
  ADD CONSTRAINT fk2_equipe 
    FOREIGN KEY (id_projet)
      REFERENCES Projet;

ALTER TABLE Materiel_Materiel
  ADD CONSTRAINT fk2_materiel_materiel 
    FOREIGN KEY (id_materiel2)
      REFERENCES Materiel;

ALTER TABLE Projet
  ADD CONSTRAINT fk2_projet 
    FOREIGN KEY (id_client)
      REFERENCES Client;

ALTER TABLE Salarie
  ADD CONSTRAINT fk2_salarie 
    FOREIGN KEY (num_matricule)
      REFERENCES Salarie;

ALTER TABLE Salarie_Equipe
  ADD CONSTRAINT fk2_salarie_equipe 
    FOREIGN KEY (id_equipe)
      REFERENCES Equipe;

ALTER TABLE Salarie_Tache
  ADD CONSTRAINT fk2_salarie_tache 
    FOREIGN KEY (num_matricule)
      REFERENCES Salarie;

ALTER TABLE Salarie
  ADD CONSTRAINT fk3_salarie 
    FOREIGN KEY (id_fonction)
      REFERENCES Fonction;