OBIECTIV

Baza de date a restaurantului online "GustulLaUșă" are ca obiectiv principal să gestioneze eficient toate aspectele operaționale ale afacerii pentru 
a oferi o experiență plăcută clienților și a facilita buna funcționare a întregului proces. Prin integrarea detaliilor legate de clienti, adrese, produse, comenzi, 
retete, ingrediente, inventar, personal, schimb și rute, sistemul vizează o coordonare și administrare transparentă și eficientă a tuturor activităților implicate în 
desfășurarea restaurantului online.

ENTITĂȚI ȘI ATRIBUTE

CLIENȚI_RESTAURANT: id_client PK, prenume_client, nume_client, număr_telefon
ADRESE: id_adresă PK, adresă, oraș, cod_poștal
PRODUSE_RESTAURANT: id_produs PK, nume_produs, categorie_produs, mărime_produs, preț_produs, monedă
COMENZI_RESTAURANT: id PK, id_comandă, dată_comandă, id_produs FK, număr_produse, id_client FK, id_adresă FK
INGREDIENTE: id_ingredient PK, nume_ingredient, cantitate, unitate_de_măsură
REȚETĂ: id PK, id_rețetă FK, id_ingredient FK, cantitate_ingredient, unitate_de_măsură
INVENTAR: id_inventar PK, id_produs FK, cantitate
PERSONAL: id_personal PK, prenume_personal, nume_personal, poziție, tarif_pe_oră, monedă, id_superior
SCHIMB: id_schimb PK, zi, începutul_programului, sfârșitul_programului
RUTE: id PK, id_rută, data FK, id_schimb FK, id_personal FK

RELAȚII ÎNTRE ENTITĂȚI

CLIENTI_RESTAURANT și COMENZI_RESTAURANT
--> Fiecare client poate plasa mai multe comenzi, dar fiecare comandă este asociată unui singur client.
ADRESE și COMENZI_RESTAURANT
--> Fiecare adresă poate fi asociată cu mai multe comenzi, dar fiecare comandă este legată de o singură adresă.
PRODUSE_RESTAURANT și COMENZI_RESTAURANT
--> Fiecare produs poate fi inclus în mai multe comenzi, dar fiecare comandă este legată de un singur produs.
PRODUSE_RESTAURANT și REȚETĂ
--> Fiecare produs poate face parte din mai multe rețete, dar fiecare rețetă este asociată cu un singur produs.
INGREDIENTE și REȚETĂ
--> Fiecare ingredient poate fi utilizat în mai multe rețete, dar fiecare rețetă include doar un ingredient.
REȚETĂ și INVENTAR
--> Fiecare rețetă poate avea mai multe înregistrări de inventar asociate, dar fiecare înregistrare de inventar corespunde unei rețete specifice.
PERSONAL și RUTE
--> Fiecare membru al personalului poate fi asignat la mai multe rute, dar fiecare rută este asignată doar unui membru al personalului.
SCHIMB și RUTE
--> Fiecare schimb poate avea mai multe rute, dar fiecare rută este asociată doar unui schimb.
RUTE și COMENZI_RESTAURANT
--> Rutele sunt asociate cu comenzile într-o relație de mulți la mulți prin intermediul tabelei "SCHIMB". Mai multe rute pot fi asociate cu mai multe comenzi. Data specifică a rutei este asociată cu data plasării comenzii.
Aceste relații ajută la definirea modului în care datele dintr-o tabelă sunt legate de datele dintr-o altă tabelă, furnizând o structură pentru baza de date și facilitând interogările care implică mai multe tabele.

