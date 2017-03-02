--
-- Data for Name: proprietaire; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO proprietaire (idproprietaire, nom, prenom, sexe, adresse, tel) VALUES (2, 'Andrianjafy', 'Landry', 'H', 'Lot IN 179 Anjanahary', '+261341200817');
INSERT INTO proprietaire (idproprietaire, nom, prenom, sexe, adresse, tel) VALUES (1, 'Rakotoarisoa', 'Andrianina', 'H', 'Lot IVK 54 Andravoangy', '+26133456781');
INSERT INTO proprietaire (idproprietaire, nom, prenom, sexe, adresse, tel) VALUES (3, 'Andriamalala', 'Raoul', 'H', 'Lot II N 182bis Soavinandriana', '+261328777552');


--
-- Data for Name: bus; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO bus (idbus, idproprietaire, nom, matricule, nbrplace) VALUES (1, 1, 'Mercedes benz 307', '3487TAB', 27);

--
-- Data for Name: utilisateurs; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO utilisateurs (idutilisateur, nom, prenom, pseudo, mdp) VALUES (1, 'Randriamanantena', 'henintsoa', 'khoum', 'root');