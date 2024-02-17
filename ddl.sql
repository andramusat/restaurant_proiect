CREATE TABLE clienti_restaurant (
    id_client NUMBER(3) CONSTRAINT clrst_id_client_pk PRIMARY KEY,
    prenume_client VARCHAR2(30) CONSTRAINT clrst_prenume_nn NOT NULL,
    nume_client VARCHAR2(30) 
);

CREATE TABLE adrese (
    id_adresa NUMBER(3) CONSTRAINT adrese_id_adresa_pk PRIMARY KEY,
    adresa VARCHAR2(50) CONSTRAINT adrese_adresa_nn NOT NULL,
    oras VARCHAR2(20) CONSTRAINT adrese_oras_ck CHECK (oras IN ('Bucuresti', 'Popesti Leordeni', 'Buftea', 'Bragadiru', 'Chitila', 'Otopeni')),
    cod_postal NUMBER(6) 
);

CREATE TABLE produse_restaurant (
    id_produs VARCHAR2(20) CONSTRAINT prest_id_produs_pk PRIMARY KEY,
    nume_produs VARCHAR2(30)  CONSTRAINT prest_nume_nn NOT NULL,
    categorie_produs VARCHAR2(20),
    marime_produs VARCHAR2(15)  CONSTRAINT prest_marime_nn NOT NULL,
    pret_produs NUMBER(6,2)  CONSTRAINT prest_pret_nn NOT NULL,
    moneda CHAR(3) DEFAULT 'RON'
);

CREATE TABLE comenzi_restaurant (
    id NUMBER(3) CONSTRAINT crest_id_comenzi_pk PRIMARY KEY,
    id_comanda VARCHAR2(20) CONSTRAINT crest_id_comanda_nn NOT NULL,
    data_comanda DATE CONSTRAINT crst_data_nn NOT NULL,
    id_produs VARCHAR(20),
    numar_produse NUMBER(3) CONSTRAINT crest_numar_nn NOT NULL,
    id_client NUMBER(3),
    id_adresa NUMBER(3),
    CONSTRAINT crest_id-produs_fk FOREIGN KEY (id_produs)
    REFERENCES produse_restaurant (id_produs) ON DELETE CASCADE,
    CONSTRAINT crest_id_client_fk FOREIGN KEY (id_client)
    REFERENCES clienti_restaurant (id_client) ON DELETE CASCADE,
    CONSTRAINT crest_id_adresa_fk FOREIGN KEY (id_adresa)
    REFERENCES adrese (id_adresa) ON DELETE CASCADE
);

CREATE TABLE ingrediente (
    id_ingredient VARCHAR2(20) CONSTRAINT ing_ingredient_pk PRIMARY KEY,
    nume_ingredient VARCHAR2(30) CONSTRAINT ing_nume_nn NOT NULL,
    cantitate NUMBER(6,2),
    unitate_de_masura VARCHAR2(10)
);

CREATE TABLE reteta (
    id NUMBER(3) CONSTRAINT reteta_id_reteta_pk PRIMARY KEY,
    id_reteta VARCHAR2(30) NOT NULL,
    id_ingredient VARCHAR(20) CONSTRAINT reteta_id_ingredient_uk UNIQUE,
    cantitate_ingredient NUMBER(6,2),
    unitate_de_masura VARCHAR2(10),
    CONSTRAINT reteta_id_reteta_fk FOREIGN KEY (id_reteta)
    REFERENCES produse_restaurant (nume_produs) ON DELETE CASCADE,
    CONSTRAINT reteta_id_ingredient_fk FOREIGN KEY (id_ingredient)
    REFERENCES ingrediente (id_ingredient) ON DELETE CASCADE
);

CREATE TABLE inventar (
    id_iventar NUMBER(3) CONSTRAINT inventar_id_inventar_pk PRIMARY KEY,
    id_produs VARCHAR2(20),
    cantitate NUMBER(6,2),
    CONSTRAINT inventar_id_inventar_fk FOREIGN KEY (id_produs)
    REFERENCES reteta (id_ingredient) ON DELETE CASCADE
);

CREATE TABLE personal (
    id_personal VARCHAR2(20) CONSTRAINT personal_id_personal_pk PRIMARY KEY,
    prenume_personal VARCHAR2(30) CONSTRAINT personal_prenume_nn NOT NULL,
    nume_personal VARCHAR2(30) CONSTRAINT personal_nume_nn NOT NULL,
    pozitie VARCHAR2(30) CONSTRAINT personal_pozitie_nn NOT NULL,
    tarif_pe_ora NUMBER(6,2) CONSTRAINT personal_tarif_nn NOT NULL,
    moneda CHAR(3) DEFAULT 'RON',
    id_superior VARCHAR2(20)
);

CREATE TABLE schimb (
    id_schimb VARCHAR2(20) CONSTRAINT schimb_id_schimb_pk PRIMARY KEY,
    zi VARCHAR2(10) CONSTRAINT schimb_zi_nn NOT NULL,
    inceputul_programului VARCHAR2(10),
    sfarsitul_programului VARCHAR2(10)
);

CREATE TABLE rute (
    id NUMBER(3) CONSTRAINT rute_id_rute_pk PRIMARY KEY,
    id_ruta VARCHAR2(20),
    data DATE,
    id_schimb VARCHAR2(20),
    id_personal VARCHAR2(20) 
    CONSTRAINT rute_data_fk FOREIGN KEY (data)
    REFERENCES comenzi_restaurant (data_comanda) ON DELETE CASCADE,
    CONSTRAINT rute_id_schimb_fk FOREIGN KEY (id_schimb)
    REFERENCES schimb (id_schimb) ON DELETE CASCADE,
    CONSTRAINT rute_id_personal_fk FOREIGN KEY (id_personal)
    REFERENCES personal (id_personal) ON DELETE CASCADE
);

COMMENT ON TABLE clienti_restaurant
IS 'Clientii restaurantului sunt multumiti.';

ALTER TABLE clienti_restaurant MODIFY(nume_client CONSTRAINT clrst_nume_nn NOT NULL);

ALTER TABLE clienti_restaurant ADD (varsta NUMBER(1));

ALTER TABLE clienti_restaurant MODIFY(varsta NUMBER(2));

ALTER TABLE clienti_restaurant MODIFY(varsta CONSTRAINT clrst_varsta_nn NOT NULL);

ALTER TABLE clienti_restaurant DROP COLUMN varsta CASCADE CONSTRAINTS;

ALTER TABLE clienti_restaurant ADD (numar_telefon NUMBER(10));

ALTER TABLE clienti_restaurant MODIFY(numar_telefon CONSTRAINT clrst_nr_telefon_nn NOT NULL);

DROP TABLE clienti_restaurant CASCADE CONSTRAINTS;

FLASHBACK TABLE clienti_restaurant TO BEFORE DROP;

ALTER TABLE adrese DISABLE CONSTRAINT adrese_oras_ck;

ALTER TABLE adrese ENABLE CONSTRAINT adrese_oras_ck;

ALTER TABLE produse_restaurant ADD CONSTRAINT prst_nume_uk UNIQUE (nume_produs); 

ALTER TABLE comenzi_restaurant DROP CONSTRAINT crst_data_nn;

ALTER TABLE comenzi_restaurant ADD CONSTRAINT comenzi_data_uk UNIQUE (data_comanda);

