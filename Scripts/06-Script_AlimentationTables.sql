INSERT INTO Fonction
VALUES
    (DEFAULT, 'Directeur'),
    (DEFAULT, 'Ressources Humaines'),
    (DEFAULT, 'Service Comptable'),
    (DEFAULT, 'Responsable Informatique'),
    (DEFAULT, 'Formateur'),
    (DEFAULT, 'Communication');

INSERT INTO Division
VALUES
    (DEFAULT, 'B', '4 avenue des coquelicots', 'Toulouse'),
    (DEFAULT, 'A', '20 rue de la Sobriété', 'Arras'),
    (DEFAULT, 'C', '87ter rue Victor Hugo', 'Nantes');

INSERT INTO Role
VALUES
    (DEFAULT, 'Directeur'),
    (DEFAULT, 'Chargé de communication'),
    (DEFAULT, 'Comptable');

INSERT INTO Client
VALUES
    (DEFAULT, 'Airbus', 'AIRBUS', '316 route de Bayonne', 'Aéronautique'),
    (DEFAULT, 'Enersys', 'Enersys SARL', '4 rue du colonnel Fabres', 'Piles et accumulateurs électriques'),
    (DEFAULT, 'Eurial', 'Eurial Lait', '157 avenue de la Primavère', 'Produits laitiers');

INSERT INTO Contact
VALUES
    (DEFAULT, 'Labrou', 'Michel', '0687414579', 'michou@orange.com', 1, 2),
    (DEFAULT, 'Duval', 'Gabriel', '0567020698', 'gabielduval@hotmail.fr', 3, 1),
    (DEFAULT, 'Kapacchio', 'Nathan', '0728979152', 'nathanlebg@wanadoo.fr', 2, 3);

INSERT INTO Salarie
VALUES
    ('SPL39', 'Reine', 'Joseph', '0621287451', '', 'joseph1reine@gmail.com', 3150, 1, '', 1),
    ('AAF57', 'Coquan', 'Christian', '0648495320', '', 'coquanchristian@laposte.net', 1600, 1, 'SPL39', 2),
    ('AAA58', 'Pouic', 'Emmanuella', '0787976451', '', 'emmapouic@orange.com', 1850, 1, 'SPL39', 2),
    ('KFC83', 'Valjean', 'Jean', '0684514274', '', 'jean.valjean@yahoo.fr', 5400, 2, '', 1),
    ('FFT52', 'Jeremia', 'Thierry', '0612233445', '', 'thierryjeremia@gmail.fr', 2150, 2, 'KFC83', 3),
    ('XOX01', 'Grandbe', 'Johnny', '0528284675', '', 'grandbe@laposte.net', 1712, 2, 'FFT52', 5),
    ('MAT02', 'Matrix', 'Paul', '0684512454', '', 'paulo31@live.fr', 2800, 3, '', 1),
    ('KKV55', 'Loxe', 'Maxime', '0665987421', '', 'maxloxe@orange.fr', 1920, 3, 'MAT02', 4),
    ('BYT63', 'Sutas', 'Faustine', '0521213254', '', 'fofo38@gmail.fr', 2700, 3, 'MAT02', 4),
    ('TZU08', 'Brocoli', 'Philippe', '0707075410', '', 'broco@yahoo.fr', 1712, 3, 'BYT63', 3);

INSERT INTO Projet
VALUES
    (DEFAULT, 'Site Web', 'Informatique', '2017-04-29', '2018-01-14', 'FFT52', 2),
    (DEFAULT, 'Construction d''un bâtiment', 'Architecture', '2017-09-07', '2019-03-25', 'KKV55', 3),
    (DEFAULT, 'Conception d''un meilleur cockpit', 'Ergonomie', '2019-08-15', null, 'FFT52', 1),
    (DEFAULT, 'Application Web', 'Informatique', '2018-01-21', '2018-11-09', 'KFC83', 1);

INSERT INTO Tache
VALUES
    (DEFAULT, 'Back', 'Développement du back-end', 1),
    (DEFAULT, 'Front', 'Développement du front-end', 1),
    (DEFAULT, 'Plans', 'Etablissement des plans', 2),
    (DEFAULT, 'Construction base', 'Construction de la base', 2),
    (DEFAULT, 'Electrisation', 'Electricité dans le bâtiment', 2),
    (DEFAULT, 'Peinture', 'Peinture et finitions', 2),
    (DEFAULT, 'Test matériel', 'Test des cockpits existants', 3),
    (DEFAULT, 'Recherche', 'Recherche de solutions plus adaptées', 3),
    (DEFAULT, 'Analyse', 'Analyse du besoin client', 4),
    (DEFAULT, 'Développement Back', 'Développement Back', 4),
    (DEFAULT, 'Développement Front', 'Développement Front', 4);


INSERT INTO Salarie_Tache
VALUES
    ('2017-04-29', '2017-10-28', 1, 'FFT52'),
    ('2017-10-29', '2018-01-14', 2, 'KFC83'),
    ('2017-10-29', '2018-01-14', 2, 'FFT52'),
    ('2017-10-29', '2018-01-14', 2, 'XOX01'),

    ('2017-04-29', '2017-06-09', 3, 'MAT02'),
    ('2017-06-10', '2017-09-07', 4, 'TZU08'),
    ('2017-06-10', '2017-09-07', 4, 'BYT63'),
    ('2017-06-10', '2017-09-07', 4, 'KKV55'),
    ('2017-09-08', '2017-12-13', 5, 'KKV55'),
    ('2017-12-15', '2018-01-14', 6, 'TZU08'),

    ('2019-08-15', '2019-09-15', 7, 'AAF57'),
    ('2019-09-16', null, 8, 'AAF57'),
    ('2019-09-16', null, 8, 'AAA58'),

    ('2018-01-21', '2018-02-12', 9, 'SPL39'),
    ('2018-02-13', '2018-06-01', 10, 'AAF57'),
    ('2018-02-13', '2018-06-01', 10, 'AAA58'),
    ('2018-06-02', '2018-11-09', 11, 'AAA58'),
    ('2018-06-02', '2018-11-09', 11, 'AAF57');

INSERT INTO Pole
VALUES
    (DEFAULT, 'Développement'),
    (DEFAULT, 'BTP'),
    (DEFAULT, 'Aéronautique');

INSERT INTO Equipe
VALUES
    (DEFAULT, 'Back-End', null, 1),
    (DEFAULT, 'Front-End', null, 1),
    (DEFAULT, 'Plans-Constructions', null, 2),
    (DEFAULT, 'Electricité-Peinture', null, 2),
    (DEFAULT, 'Cockpits', null, 3);

INSERT INTO Salarie_Equipe
VALUES
    ('2017-04-29', '2017-10-28', 'FFT52', 1),
    ('2017-10-29', '2018-01-14', 'KFC83', 2),
    ('2017-10-29', '2018-01-14', 'FFT52', 2),
    ('2017-10-29', '2018-01-14', 'XOX01', 2),

    ('2018-02-13', '2018-06-01', 'AAF57', 1),
    ('2018-02-13', '2018-06-01', 'AAA58', 1),
    ('2018-06-02', '2018-11-09', 'AAA58', 2),
    ('2018-06-02', '2018-11-09', 'AAF57', 2),

    ('2017-04-29', '2017-06-09', 'MAT02', 3),
    ('2017-06-10', '2017-09-07', 'TZU08', 3),
    ('2017-06-10', '2017-09-07', 'BYT63', 3),
    ('2017-06-10', '2017-09-07', 'KKV55', 3),

    ('2017-09-08', '2017-12-13', 'KKV55', 4),
    ('2017-12-15', '2018-01-14', 'TZU08', 4),

    ('2019-08-15', null, 'AAF57', 5),
    ('2019-09-16', null, 'AAA58', 5);

INSERT INTO Materiel
VALUES
    (DEFAULT, 'Ordinateur', 'Informatique', 'ORD01', '2017-04-29', '2017-10-28', 'FFT52'),
    (DEFAULT, 'Ordinateur', 'Informatique', 'ORD01', '2017-10-29', '2018-01-14', 'KFC83'),
    (DEFAULT, 'Ordinateur', 'Informatique', 'ORD02', '2017-10-29', '2018-01-14', 'FFT52'),
    (DEFAULT, 'Ordinateur', 'Informatique', 'ORD03', '2017-10-29', '2018-01-14', 'XOX01'),

    (DEFAULT, 'Brouette', 'BTP', 'BRO01', '2017-06-10', '2017-08-07', 'TZU08'),
    (DEFAULT, 'Brouette', 'BTP', 'BRO01', '2017-08-08', '2017-09-07', 'BYT63'),
    (DEFAULT, 'Tractopelle', 'BTP', 'TRA01', '2017-06-10', '2017-09-07', 'KKV55'),
    (DEFAULT, 'Perceuse', 'BTP', 'PER01', '2017-09-08', '2017-12-13', 'KKV55'),
    (DEFAULT, 'Echelle', 'BTP', 'ECH01', '2017-09-08', '2017-12-13', 'KKV55'),
    (DEFAULT, 'Petit pinceau', 'BTP', 'PIN01', '2017-12-15', '2018-01-14', 'TZU08'),
    (DEFAULT, 'Gros pinceau', 'BTP', 'PIN02', '2017-12-15', '2018-01-14', 'TZU08'),

    (DEFAULT, 'Imprimante', 'Bureautique', 'IMP01', '2019-09-16', null, 'AAF57'),
    (DEFAULT, 'Stylo', 'Bureautique', 'STY01', '2019-11-08', null, 'AAF57'),
    (DEFAULT, 'Stylo', 'Bureautique', 'STY02', '2019-10-27', null, 'AAA58'),

    (DEFAULT, 'Ordinateur', 'Informatique', 'ORD04', '2018-02-13', '2018-11-09', 'AAF57'),
    (DEFAULT, 'Ordinateur', 'Informatique', 'ORD05', '2018-02-13', '2018-02-15', 'AAA58'),
    (DEFAULT, 'Ordinateur', 'Informatique', 'ORD06', '2018-02-15', '2018-11-09', 'AAA58');

-- INSERT INTO Materiel_Materiel VALUES