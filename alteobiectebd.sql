--	Creeză o vedere care să conțină doar ingredientele cu cantitatea disponibilă mai mare decât 10, apoi șterge această vedere:

CREATE VIEW ingrediente_disponibile_vw AS
SELECT id_ingredient, nume_ingredient, cantitate, unitate_de_masura
FROM ingrediente
WHERE cantitate > 10
WITH CHECK OPTION;

SELECT * FROM ingrediente_disponibile_vw;

DROP VIEW ingrediente_disponibile_vw;

--	Creează un index bitmap pentru coloana unitate_de_masura din tabela ingredient:

CREATE BITMAP INDEX unitate_masura__bmp_idx ON ingrediente(unitate_de_masura);

-- Exemplu de interogare care utilizează indexul bitmap:

SELECT *
FROM ingrediente
WHERE unitate_de_masura = 'kg';

--	Creează un sinonim pentru tabela inventar și apoi șterge-l:

CREATE SYNONYM inventar2 FOR inventar;

DROP SYNONYM inventar2;

--	Creează o secvență pentru tabela inventar, apoi șterge-o:

CREATE SEQUENCE inventar_seq
START WITH 1
INCREMENT BY 1
MAXVALUE 1000
NOCACHE
NOCYCLE;

DROP SEQUENCE inventar_seq;
