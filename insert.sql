--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

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
INSERT INTO bus (idbus, idproprietaire, nom, matricule, nbrplace) VALUES (5, 2, 'Volkswaggen', '1115TAJ', 32);
INSERT INTO bus (idbus, idproprietaire, nom, matricule, nbrplace) VALUES (4, 1, 'Mercedes benz sprinter 316 cdi', '9981TAU', 27);
INSERT INTO bus (idbus, idproprietaire, nom, matricule, nbrplace) VALUES (6, 2, 'Mercedes benz sprinter 906 cdi', '6691TAM', 32);


--
-- Data for Name: billets; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: billets_idbillet_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('billets_idbillet_seq', 1, false);


--
-- Name: bus_idbus_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('bus_idbus_seq', 6, true);


--
-- Data for Name: personnel; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO personnel (idpersonnel, idbus, nom, prenom, datenaissance, sexe, adresse, tel, poste) VALUES (1, 1, 'Andriatomanga', 'Rindra', '1990-09-06', 'H', 'Lot klx 23 Mausole', '+261340700915', 'chauffeur');
INSERT INTO personnel (idpersonnel, idbus, nom, prenom, datenaissance, sexe, adresse, tel, poste) VALUES (2, 1, 'Ramanatsalama', 'Anthony', '1991-10-19', 'H', 'Lot df 78 Besarety', '+261331254712', 'receveur');


--
-- Name: personnel_idpersonnel_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('personnel_idpersonnel_seq', 2, true);


--
-- Data for Name: pointage; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: pointage_idpointage_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pointage_idpointage_seq', 1, false);


--
-- Name: proprietaire_idproprietaire_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('proprietaire_idproprietaire_seq', 3, true);


--
-- Data for Name: utilisateurs; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO utilisateurs (idutilisateur, nom, prenom, pseudo, mdp) VALUES (1, 'Randriamanantena', 'Gali', 'Gali', 'root');


--
-- Name: utilisateurs_idutilisateur_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('utilisateurs_idutilisateur_seq', 1, true);


--
-- PostgreSQL database dump complete
--

