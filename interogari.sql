-- Selectează angajații care au un tarif pe oră între 30 și 50 RON și poziția "bucatar":

SELECT *
FROM personal
WHERE tarif_pe_ora BETWEEN 30 AND 50
AND LOWER(pozitie) = 'bucatar';

-- Selectează angajații cu cele mai mari 3 tarife pe oră:

SELECT *
FROM (
SELECT *
FROM personal
ORDER BY tarif_pe_ora DESC
)
WHERE ROWNUM <= 3;

-- Selectează angajații care au poziția de "Livrator":

SELECT *
FROM personal
WHERE INITCAP(pozitie) = 'Livrator';

--	Selectează toate schimburile care încep după ora 18:00:

SELECT *
FROM schimb
WHERE inceputul_programului > '18:00';


--	Selectează schimburile care nu se suprapun (nu au orele de început și sfârșit comune):

SELECT s1.*
FROM schimb s1, schimb s2
WHERE s1.id_schimb <> s2.id_schimb
AND s1.zi = s2.zi
AND (s1.inceputul_programului >= s2.sfarsitul_programului OR s1.sfarsitul_programului <= s2.inceputul_programului);

-- Selectează toate informațiile despre comenzi, incluzând detalii despre produs, client și adresă:

SELECT cr.id, cr.id_comanda, cr.data_comanda, pr.nume_produs, pr.pret_produs, cr.numar_produse, cl.nume_client, cl.prenume_client, ad.adresa, ad.oras
FROM comenzi_restaurant cr
JOIN produse_restaurant pr ON cr.id_produs = pr.id_produs
JOIN clienti_restaurant cl ON cr.id_client = cl.id_client
JOIN adrese ad ON cr.id_adresa = ad.id_adresa;

-- Afișează informații despre clienții care au plasat comenzi și detaliile acestor comenzi:

SELECT cl.id_client, cl.nume_client, cl.prenume_client, COUNT(cr.id) AS numar_comenzi
FROM clienti_restaurant cl
JOIN comenzi_restaurant cr ON cl.id_client = cr.id_client
GROUP BY cl.id_client, cl.nume_client, cl.prenume_client
ORDER BY cl.id_client;

-- Selectează toate comenzile și afișează și comenzile fără produse asociate (utilizând LEFT JOIN):

SELECT cr.id, cr.id_comanda, cr.data_comanda, pr.nume_produs, pr.pret_produs, cr.numar_produse, cl.nume_client, cl.prenume_client, ad.adresa, ad.oras
FROM comenzi_restaurant cr
LEFT JOIN produse_restaurant pr ON cr.id_produs = pr.id_produs
JOIN clienti_restaurant cl ON cr.id_client = cl.id_client
JOIN adrese ad ON cr.id_adresa = ad.id_adresa;

-- Afișează toate produsele și numărul de comenzi asociate fiecărui produs (utilizând RIGHT JOIN):

SELECT pr.id_produs, pr.nume_produs, COUNT(cr.id) AS numar_comenzi
FROM produse_restaurant pr
RIGHT JOIN comenzi_restaurant cr ON pr.id_produs = cr.id_produs
GROUP BY pr.id_produs, pr.nume_produs
ORDER BY pr.id_produs;

--	Afișează toate adresele, inclusiv cele care nu au fost asociate niciunei comenzi (utilizând FULL JOIN):

SELECT ad.id_adresa, ad.adresa, ad.oras, COUNT(cr.id) AS numar_comenzi
FROM adrese ad
FULL JOIN comenzi_restaurant cr ON ad.id_adresa = cr.id_adresa
GROUP BY ad.id_adresa, ad.adresa, ad.oras;

--	Afișează ruta, prenumele și numele bucătarilor pentru data de 05-12-2023:

SELECT r.id_ruta, r.data, p.prenume_personal, p.nume_personal
FROM rute r
JOIN personal p ON r.id_personal = p.id_personal
WHERE r.data = TO_DATE('05-12-2023', 'DD-MM-YYYY');

-- Afișează costul total al rutei de pe data 10-12-2023:

SELECT r.id_ruta, r.data, ROUND(SUM(p.tarif_pe_ora * (TO_DATE(s.sfarsitul_programului, 'HH24:MI') - TO_DATE(s.inceputul_programului, 'HH24:MI'))), 2) || ' RON' AS cost_total
FROM rute r
JOIN personal p ON r.id_personal = p.id_personal
JOIN schimb s ON r.id_schimb = s.id_schimb
WHERE r.data = TO_DATE('10-12-2023', 'DD-MM-YYYY')
GROUP BY r.id_ruta, r.data;

--	Afișează numele și prețul mediu al fiecărei categorii de produse:

SELECT categorie_produs, ROUND(AVG(pret_produs), 1) AS pret_mediu
FROM produse_restaurant
GROUP BY categorie_produs;

--	Afișează suma totală a prețurilor pentru fiecare mărime de produs:

SELECT marime_produs, SUM(pret_produs) AS suma_totala
FROM produse_restaurant
GROUP BY marime_produs;

--	Afișează produsele din categoria 'Desert' cu prețuri peste media prețurilor din această categorie:

SELECT *
FROM produse_restaurant
WHERE categorie_produs = 'Desert' 
AND pret_produs > (SELECT AVG(pret_produs) FROM produse_restaurant WHERE categorie_produs = 'Desert');

--	Afișează suma prețurilor produselor comandate în fiecare comandă:

SELECT id_comanda, SUM(pret_produs * numar_produse) AS suma_preturi
FROM comenzi_restaurant
JOIN produse_restaurant ON comenzi_restaurant.id_produs = produse_restaurant.id_produs
GROUP BY id_comanda
ORDER BY id_comanda;

-- Afișează numele și prețul maxim al produselor pentru fiecare categorie:

SELECT categorie_produs, MAX(pret_produs) AS pret_maxim
FROM produse_restaurant
GROUP BY categorie_produs;

--	Afișează detaliile comenzilor efectuate înainte de data 18-12-2023:

SELECT *
FROM comenzi_restaurant
WHERE data_comanda < TO_DATE('10-12-2023', 'DD-MM-YYYY');

--	Afișează data comenzii și numărul de zile trecute de atunci pentru fiecare comandă:

SELECT id_comanda, data_comanda, TRUNC((SYSDATE - data_comanda), 2)
AS zile_trecute
FROM comenzi_restaurant;

--	Afișează numărul de caractere al numelui complet al fiecărui client:

SELECT id_client, LENGTH(nume_client || ' ' || prenume_client) AS lungime_nume_complet
FROM clienti_restaurant
ORDER BY id_client;

--	Afișează o listă a comenzilor cu ID-uri formatate cu zerouri adăugate la stânga, astfel încât acestea să aibă o lungime totală de 8 caractere:

SELECT id_comanda, LPAD(id_comanda, 8, '0') AS id_formatat
FROM comenzi_restaurant;

--	Afișați numerele de telefon cu prefixul '+40' pentru clienții care au furnizat număr de telefon:

SELECT id_client, prenume_client, nume_client,
NVL('(+40)' || SUBSTR(TO_CHAR(numar_telefon), 1, 2) || '-' || SUBSTR(TO_CHAR(numar_telefon), 3, 3) || '-' || SUBSTR(TO_CHAR(numar_telefon), 6, 4), 'Numar lipsa') as telefon
FROM clienti_restaurant
WHERE numar_telefon IS NOT NULL
ORDER BY id_client;

--	Obține suma totală a produselor comandate pentru fiecare client, astfel încât să se poată identifica cei mai mari clienți (cei care au cheltuit cel mai mult):

SELECT c.id_client, c.nume_client, c.prenume_client, SUM(pr.pret_produs * cr.numar_produse) AS total_cheltuit
FROM clienti_restaurant c
JOIN comenzi_restaurant cr ON c.id_client = cr.id_client
JOIN produse_restaurant pr ON cr.id_produs = pr.id_produs
GROUP BY c.id_client, c.nume_client, c.prenume_client
HAVING SUM(pr.pret_produs * cr.numar_produse) > 50
ORDER BY total_cheltuit DESC;

--	Afișați o listă cu ingredientele care au o cantitate mai mare de 50 de kilograme, marcându-le cu "Cantitate mare", altfel "Cantitate normală":

SELECT id_ingredient, nume_ingredient,
CASE
WHEN cantitate > 50 THEN 'Cantitate mare'
ELSE 'Cantitate normală'
END AS status_cantitate
FROM ingrediente;

--	Afișați prețul total pentru fiecare ingredient în funcție de cantitate și prețul pe unitate (1 kg - 1,5 ron, 1 litru - 2 ron sau 1 bucată - 0.5 ron):

SELECT id_ingredient, nume_ingredient, cantitate, unitate_de_masura,
CASE
WHEN unitate_de_masura = 'kg' THEN cantitate * 1.5  
WHEN unitate_de_masura = 'l' THEN cantitate * 2.0  
WHEN unitate_de_masura = 'buc' THEN cantitate * 0.5 
END AS pret_total, 'RON' AS moneda
FROM ingrediente;

--	Afișează orașul și un status pentru codul poștal, indicând dacă acesta este sau nu valid:

SELECT id_adresa, adresa, oras, cod_postal,
DECODE(
oras,
'Bucuresti', 
DECODE(
LENGTH(TO_CHAR(cod_postal)),
6, 'Cod postal valid',
'Cod postal invalid'
),
DECODE(
LENGTH(TO_CHAR(cod_postal)),
6, 'Cod postal valid',
'Cod postal invalid'
)
) AS status_cod_postal
FROM adrese
ORDER BY id_adresa;

--	Găsește produsele care conțin ingrediente "Mozzarella" și "Roșii Cherry":

SELECT pr.nume_produs
FROM produse_restaurant pr
WHERE EXISTS (
SELECT r.id_reteta
FROM reteta r
JOIN ingrediente i ON r.id_ingredient = i.id_ingredient
WHERE r.id_reteta = pr.nume_produs
AND i.nume_ingredient IN ('Mozzarella', 'Roșii Cherry')
);

--	Găsește produsele care nu conțin alergeni (de exemplu, gluten):

SELECT pr.nume_produs
FROM produse_restaurant pr
WHERE NOT EXISTS (
SELECT r.id_reteta
FROM reteta r
JOIN ingrediente i ON r.id_ingredient = i.id_ingredient
WHERE r.id_reteta = pr.nume_produs
AND i.nume_ingredient = 'Gluten'
);

-- Afișează lista completă de ingrediente diverse din toate rețetele:

SELECT nume_ingredient
FROM ingrediente
UNION
SELECT i.nume_ingredient
FROM reteta r
JOIN ingrediente i ON r.id_ingredient = i.id_ingredient;

--	Obține lista de produse care conțin ingredientul "Ulei de masline" dar nu și "Sare":

SELECT pr.nume_produs
FROM produse_restaurant pr
WHERE EXISTS (
SELECT r.id_reteta
FROM reteta r
JOIN ingrediente i ON r.id_ingredient = i.id_ingredient
WHERE r.id_reteta = pr.nume_produs
AND i.nume_ingredient = 'Ulei de masline'
)
MINUS
SELECT pr.nume_produs
FROM produse_restaurant pr
WHERE EXISTS (
SELECT r.id_reteta
FROM reteta r
JOIN ingrediente i ON r.id_ingredient = i.id_ingredient
WHERE r.id_reteta = pr.nume_produs
AND i.nume_ingredient = 'Sare'
);

--	Obține lista ID-urilor ingredientelor care sunt atât în reteta cât și în inventar, cu cantitatea disponibilă mai mică sau egală cu 200:

SELECT id_ingredient
FROM reteta
WHERE id_ingredient IN (
SELECT id_produs
FROM inventar
WHERE cantitate <= 200
)
INTERSECT
SELECT id_produs
FROM inventar
WHERE cantitate <= 200
ORDER BY id_ingredient;

-- Afișează numele personalului sub forma unei ierarhii, adăugând "_" în funcție de nivelul ierarhiei:

SELECT LEVEL, LPAD(nume_personal, 
LENGTH(nume_personal) + (LEVEL * 2) - 2, '_') AS "Ordine"
FROM personal
START WITH id_superior IS NULL
CONNECT BY PRIOR id_personal = id_superior
ORDER BY LEVEL;
