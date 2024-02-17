INSERT INTO clienti_restaurant VALUES(1, 'Ana', 'Popescu', 1234567890);
INSERT INTO clienti_restaurant VALUES(2, 'Mihai', 'Ionescu', 9876543210);
INSERT INTO clienti_restaurant VALUES(3, 'Elena', 'Radu', 5551234567);
INSERT INTO clienti_restaurant VALUES(4, 'Adrian', 'Dumitrescu', 1112223333);
INSERT INTO clienti_restaurant VALUES(5, 'Laura', 'Constantin', 4445556666);
INSERT INTO clienti_restaurant VALUES(6, 'Ionut', 'Gheorghe', 9998887777);
INSERT INTO clienti_restaurant VALUES(7, 'Andreea', 'Stancu', 6665554444);
INSERT INTO clienti_restaurant VALUES(8, 'Cristian', 'Munteanu', 3334445555);
INSERT INTO clienti_restaurant VALUES(9, 'Roxana', 'Dinu', 2223334444);
INSERT INTO clienti_restaurant VALUES(10, 'Alexandru', 'Iancu', 7778889999);
INSERT INTO clienti_restaurant VALUES(11, 'Diana', 'Dragomir', 8889990000);
INSERT INTO clienti_restaurant VALUES(12, 'Sorin', 'Avram', 1239874560);
INSERT INTO clienti_restaurant VALUES(13, 'Georgiana', 'Pavel', 4567890123);
INSERT INTO clienti_restaurant VALUES(14, 'Andrei', 'Istrate', 7890123456);
INSERT INTO clienti_restaurant VALUES(15, 'Simona', 'Nicolae', 2345678901);

INSERT INTO adrese VALUES(10, 'Strada Victoriei, Nr. 1', 'Bucuresti', 123456);
INSERT INTO adrese VALUES(11, 'Bulevardul Unirii, Nr. 20', 'Bucuresti', 654321);
INSERT INTO adrese VALUES(12, 'Aleea Florilor, Nr. 15', 'Popesti Leordeni', 987654);
INSERT INTO adrese VALUES(13, 'Bulevardul Republicii, Nr. 7', 'Buftea', 111222);
INSERT INTO adrese VALUES(14, 'Strada Libertatii, Nr. 10', 'Bragadiru', 333444);
INSERT INTO adrese VALUES(15, 'Bulevardul Mihai Eminescu, Nr. 25', 'Chitila', 555666);
INSERT INTO adrese VALUES(16, 'Aleea Soarelui, Nr. 8', 'Otopeni', 777888);
INSERT INTO adrese VALUES(17, 'Strada Independentei, Nr. 5', 'Bucuresti', 999000);
INSERT INTO adrese VALUES(18, 'Bulevardul Carol I, Nr. 12', 'Popesti Leordeni', 111222);
INSERT INTO adrese VALUES(19, 'Strada Stefan cel Mare, Nr. 30', 'Bucuresti', 333444);
INSERT INTO adrese VALUES(20, 'Aleea Castanilor, Nr. 18', 'Bragadiru', 555666);
INSERT INTO adrese VALUES(21, 'Bulevardul Basarabiei, Nr. 3', 'Chitila', 777888);
INSERT INTO adrese VALUES(22, 'Strada Revolutiei, Nr. 22', 'Otopeni', 999000);
INSERT INTO adrese VALUES(23, 'Bulevardul Timisoara, Nr. 17', 'Bucuresti', 111222);
INSERT INTO adrese VALUES(24, 'Aleea Crizantemelor, Nr. 14', 'Popesti Leordeni', 333444);

INSERT INTO produse_restaurant (id_produs, nume_produs, categorie_produs, marime_produs, pret_produs) VALUES('P1', 'Pizza Margherita', 'Pizza', 'medie', 15.9);
INSERT INTO produse_restaurant VALUES('P2', 'Paste Bolognese', 'Paste', 'portie medie', 12.50, 'RON');
INSERT INTO produse_restaurant VALUES('P3', 'Burger Clasic', 'Burger', 'XL', 18.75, 'RON');
INSERT INTO produse_restaurant VALUES('P4', 'Salata Caesar', 'Salata', 'portie medie', 8.99, 'RON');
INSERT INTO produse_restaurant VALUES('P5', 'Supa de Legume', 'Supa', 'portie medie', 5.50, 'RON');
INSERT INTO produse_restaurant VALUES('P6', 'Pui la Gratar', 'Fel Principal', 'portie mare', 22.50, 'RON');
INSERT INTO produse_restaurant VALUES('P7', 'Tiramisu', 'Desert', 'mediu', 7.99, 'RON');
INSERT INTO produse_restaurant VALUES('P8', 'Ciorba de Burta', 'Ciorba', 'portie medie', 10.25, 'RON');
INSERT INTO produse_restaurant VALUES('P9', 'Sushi Combo', 'Sushi', 'portie mare', 29.99, 'RON');
INSERT INTO produse_restaurant VALUES('P10', 'Pasta Carbonara', 'Paste', 'portie mare', 14.75, 'RON');
INSERT INTO produse_restaurant VALUES('P11', 'Cheesecake', 'Desert', 'mediu', 9.25, 'RON');
INSERT INTO produse_restaurant VALUES('P12', 'Fish and Chips', 'Fel Principal', 'portie mare', 17.50, 'RON');
INSERT INTO produse_restaurant VALUES('P13', 'Sandwich Veggie', 'Sandwich', 'mediu', 8.50, 'RON');
INSERT INTO produse_restaurant VALUES('P14', 'Lasagna', 'Fel Principal', 'portie mare', 16.50, 'RON');
INSERT INTO produse_restaurant VALUES('P15', 'Sorbet de Fructe', 'Desert', 'mediu', 6.99, 'RON');
INSERT INTO produse_restaurant VALUES('B1', 'Apa Minerala', 'Băutură', '0.5L', 3.50, 'RON');
INSERT INTO produse_restaurant VALUES('B2', 'Coca-Cola', 'Suc', '0.33L', 5.00, 'RON');
INSERT INTO produse_restaurant VALUES('B3', 'Cafea Americano', 'Cafea', 'M', 7.99, 'RON');
INSERT INTO produse_restaurant VALUES('B4', 'Vin Rosu Sec', 'Vin', '1L', 25.99, 'RON');
INSERT INTO produse_restaurant VALUES('B5', 'Whisky Single Malt', 'Spirtoase', '50ml', 40.00, 'RON');

INSERT INTO comenzi_restaurant VALUES(100, 'C1001', TO_DATE('05-12-2023', 'DD-MM-YYYY'), 'P1', 2, 1, 10);
INSERT INTO comenzi_restaurant VALUES(101, 'C1002', TO_DATE('06-12-2023', 'DD-MM-YYYY'), 'P3', 1, 2, 11);
INSERT INTO comenzi_restaurant VALUES(102, 'C1003', TO_DATE('07-12-2023', 'DD-MM-YYYY'), 'P5', 3, 3, 12);
INSERT INTO comenzi_restaurant VALUES(103, 'C1004', TO_DATE('08-12-2023', 'DD-MM-YYYY'), 'P8', 1, 4, 13);
INSERT INTO comenzi_restaurant VALUES(104, 'C1005', TO_DATE('09-12-2023', 'DD-MM-YYYY'), 'P10', 2, 5, 14);
INSERT INTO comenzi_restaurant VALUES(105, 'C1006', TO_DATE('10-12-2023', 'DD-MM-YYYY'), 'P12', 1, 6, 15);
INSERT INTO comenzi_restaurant VALUES(106, 'C1007', TO_DATE('11-12-2023', 'DD-MM-YYYY'), 'P14', 4, 7, 16);
INSERT INTO comenzi_restaurant VALUES(107, 'C1008', TO_DATE('12-12-2023', 'DD-MM-YYYY'), 'B2', 2, 8, 17);
INSERT INTO comenzi_restaurant VALUES(108, 'C1009', TO_DATE('13-12-2023', 'DD-MM-YYYY'), 'B3', 1, 9, 18);
INSERT INTO comenzi_restaurant VALUES(109, 'C1010', TO_DATE('14-12-2023', 'DD-MM-YYYY'), 'B5', 1, 10, 19);
INSERT INTO comenzi_restaurant VALUES(110, 'C1011', TO_DATE('15-12-2023', 'DD-MM-YYYY'), 'P2', 3, 11, 20);
INSERT INTO comenzi_restaurant VALUES(111, 'C1012', TO_DATE('16-12-2023', 'DD-MM-YYYY'), 'P6', 2, 12, 21);
INSERT INTO comenzi_restaurant VALUES(112, 'C1013', TO_DATE('17-12-2023', 'DD-MM-YYYY'), 'P9', 1, 13, 22);
INSERT INTO comenzi_restaurant VALUES(113, 'C1014', TO_DATE('18-12-2023', 'DD-MM-YYYY'), 'B1', 4, 14, 23);
INSERT INTO comenzi_restaurant VALUES(114, 'C1015', TO_DATE('19-12-2023', 'DD-MM-YYYY'), 'P11', 1, 15, 24);

INSERT INTO ingrediente VALUES ('I1', 'Aluat Pizza', 300, 'kg');
INSERT INTO ingrediente VALUES ('I2', 'Sos Tomat', 50, 'kg');
INSERT INTO ingrediente VALUES ('I3', 'Mozzarella', 100, 'kg');
INSERT INTO ingrediente VALUES ('I4', 'Rosii Cherry', 100, 'kg');
INSERT INTO ingrediente VALUES ('I5', 'Busuioc', 5, 'kg');
INSERT INTO ingrediente VALUES ('I6', 'Ulei de masline', 40, 'l');
INSERT INTO ingrediente VALUES ('I7', 'Paste Fainoase', 200, 'kg');
INSERT INTO ingrediente VALUES ('I8', 'Sos Bolognese', 180, 'kg');
INSERT INTO ingrediente VALUES ('I9', 'Parmezan', 20, 'kg');
INSERT INTO ingrediente VALUES ('I10', 'Chifla Burger', 100, 'buc');
INSERT INTO ingrediente VALUES ('I11', 'Carne de Vită', 150, 'kg');
INSERT INTO ingrediente VALUES ('I12', 'Roșie', 100, 'buc');
INSERT INTO ingrediente VALUES ('I13', 'Castravete', 50, 'kg');
INSERT INTO ingrediente VALUES ('I14', 'Frunze de Salata Romaine', 60, 'kg');
INSERT INTO ingrediente VALUES ('I15', 'Piept de Pui la Gratar', 150, 'kg');
INSERT INTO ingrediente VALUES ('I16', 'Crutoane', 50, 'kg');
INSERT INTO ingrediente VALUES ('I17', 'Parmezan Ras', 30, 'kg');
INSERT INTO ingrediente VALUES ('I18', 'Sos Caesar', 40, 'kg');
INSERT INTO ingrediente VALUES ('I19', 'Morcov', 80, 'kg');
INSERT INTO ingrediente VALUES ('I20', 'Cartof', 100, 'kg');
INSERT INTO ingrediente VALUES ('I21', 'Ceapa', 50, 'kg');
INSERT INTO ingrediente VALUES ('I22', 'Dovlecel', 60, 'kg');
INSERT INTO ingrediente VALUES ('I23', 'Ardei', 40, 'kg');
INSERT INTO ingrediente VALUES ('I24', 'Usturoi', 10, 'kg');
INSERT INTO ingrediente VALUES ('I25', 'Supa de Legume', 300, 'l');
INSERT INTO ingrediente VALUES ('I26', 'Piept de Pui', 200, 'kg');
INSERT INTO ingrediente VALUES ('I27', 'Marinata pentru Pui', 50, 'kg');
INSERT INTO ingrediente VALUES ('I28', 'Ulei de Măsline', 20, 'l');
INSERT INTO ingrediente VALUES ('I29', 'Sare', 5, 'kg');
INSERT INTO ingrediente VALUES ('I30', 'Piper', 2, 'kg');
INSERT INTO ingrediente VALUES ('I31', 'Blat de Pandișpan', 150, 'kg');
INSERT INTO ingrediente VALUES ('I32', 'Cafea Neagra', 50, 'l');
INSERT INTO ingrediente VALUES ('I33', 'Mascarpone', 100, 'kg');
INSERT INTO ingrediente VALUES ('I34', 'Zahar', 30, 'kg');
INSERT INTO ingrediente VALUES ('I35', 'Cacao', 10, 'kg');
INSERT INTO ingrediente VALUES ('I36', 'Burta de Vita', 200, 'kg');
INSERT INTO ingrediente VALUES ('I37', 'Legume pentru Ciorbă', 150, 'kg');
INSERT INTO ingrediente VALUES ('I38', 'Fasole Boabe', 50, 'kg');
INSERT INTO ingrediente VALUES ('I39', 'Sfecla Rosie', 30, 'kg');
INSERT INTO ingrediente VALUES ('I40', 'Smantana', 50, 'l');
INSERT INTO ingrediente VALUES ('I41', 'Orez pentru Sushi', 100, 'kg');
INSERT INTO ingrediente VALUES ('I42', 'Nori', 100, 'folii');
INSERT INTO ingrediente VALUES ('I43', 'Somon', 50, 'kg');
INSERT INTO ingrediente VALUES ('I44', 'Avocado', 30, 'kg');
INSERT INTO ingrediente VALUES ('I45', 'Castravete', 20, 'kg');
INSERT INTO ingrediente VALUES ('I46', 'Paste Fettuccine', 200, 'kg');
INSERT INTO ingrediente VALUES ('I47', 'Bacon', 100, 'kg');
INSERT INTO ingrediente VALUES ('I48', 'Ou', 100, 'buc');
INSERT INTO ingrediente VALUES ('I49', 'Parmezan Ras', 30, 'kg');
INSERT INTO ingrediente VALUES ('I50', 'Smantana', 50, 'l');
INSERT INTO ingrediente VALUES ('I51', 'Biscuiti Graham', 100, 'kg');
INSERT INTO ingrediente VALUES ('I52', 'Unt', 50, 'kg');
INSERT INTO ingrediente VALUES ('I53', 'Branza de Vaca', 200, 'kg');
INSERT INTO ingrediente VALUES ('I54', 'Zahar', 50, 'kg');
INSERT INTO ingrediente VALUES ('I55', 'Ou', 28, 'buc');
INSERT INTO ingrediente VALUES ('I56', 'File de Peste', 150, 'kg');
INSERT INTO ingrediente VALUES ('I57', 'Cartofi Prajiti', 200, 'kg');
INSERT INTO ingrediente VALUES ('I58', 'Faina', 50, 'kg');
INSERT INTO ingrediente VALUES ('I59', 'Ou', 10, 'buc');
INSERT INTO ingrediente VALUES ('I60', 'Sare', 5, 'kg');
INSERT INTO ingrediente VALUES ('I61', 'Paine Integrala', 60, 'buc');
INSERT INTO ingrediente VALUES ('I62', 'Hummus', 30, 'kg');
INSERT INTO ingrediente VALUES ('I63', 'Avocado', 100, 'buc');
INSERT INTO ingrediente VALUES ('I64', 'Rosie', 100, 'buc');
INSERT INTO ingrediente VALUES ('I65', 'Salata Verde', 50, 'kg');
INSERT INTO ingrediente VALUES ('I66', 'Foile de Lasagna', 150, 'kg');
INSERT INTO ingrediente VALUES ('I67', 'Carne de Vita Tocata', 200, 'kg');
INSERT INTO ingrediente VALUES ('I68', 'Sos Bechamel', 100, 'kg');
INSERT INTO ingrediente VALUES ('I69', 'Branza Mozzarella', 50, 'kg');
INSERT INTO ingrediente VALUES ('I70', 'Parmezan Ras', 30, 'kg');
INSERT INTO ingrediente VALUES ('I71', 'Fructe de Padure', 100, 'kg');
INSERT INTO ingrediente VALUES ('I72', 'Zahar', 30, 'kg');
INSERT INTO ingrediente VALUES ('I73', 'Suc de Lamaie', 20, 'l');

INSERT INTO reteta VALUES(1, 'Pizza Margherita', 'I1', 200, 'g');
INSERT INTO reteta VALUES(2, 'Pizza Margherita', 'I2', 150, 'g');
INSERT INTO reteta VALUES(3, 'Pizza Margherita', 'I3', 100, 'g');
INSERT INTO reteta VALUES(4, 'Pizza Margherita', 'I4', 50, 'g');
INSERT INTO reteta VALUES(5, 'Pizza Margherita', 'I5', 5, 'g');
INSERT INTO reteta VALUES(6, 'Pizza Margherita', 'I6', 10, 'ml');
INSERT INTO reteta VALUES(7, 'Paste Bolognese', 'I7', 200, 'g');
INSERT INTO reteta VALUES(8, 'Paste Bolognese', 'I8', 180, 'g');
INSERT INTO reteta VALUES(9, 'Paste Bolognese', 'I9', 20, 'g');
INSERT INTO reteta VALUES(10, 'Burger Clasic', 'I10', 2, 'buc');
INSERT INTO reteta VALUES(11, 'Burger Clasic', 'I11', 150, 'g');
INSERT INTO reteta VALUES(12, 'Burger Clasic', 'I12', 1, 'buc');
INSERT INTO reteta VALUES(13, 'Burger Clasic', 'I13', 50, 'g');
INSERT INTO reteta VALUES(14, 'Salata Caesar', 'I14', 100, 'g');
INSERT INTO reteta VALUES(15, 'Salata Caesar', 'I15', 150, 'g');
INSERT INTO reteta VALUES(16, 'Salata Caesar', 'I16', 50, 'g');
INSERT INTO reteta VALUES(17, 'Salata Caesar', 'I17', 30, 'g');
INSERT INTO reteta VALUES(18, 'Salata Caesar', 'I18', 40, 'g');
INSERT INTO reteta VALUES(19, 'Supa de Legume', 'I19', 80, 'g');
INSERT INTO reteta VALUES(20, 'Supa de Legume', 'I20', 100, 'g');
INSERT INTO reteta VALUES(21, 'Supa de Legume', 'I21', 50, 'g');
INSERT INTO reteta VALUES(22, 'Supa de Legume', 'I22', 60, 'g');
INSERT INTO reteta VALUES(23, 'Supa de Legume', 'I23', 40, 'g');
INSERT INTO reteta VALUES(24, 'Supa de Legume', 'I24', 10, 'g');
INSERT INTO reteta VALUES(25, 'Supa de Legume', 'I25', 300, 'ml');
INSERT INTO reteta VALUES(26, 'Pui la Gratar', 'I26', 200, 'g');
INSERT INTO reteta VALUES(27, 'Pui la Gratar', 'I27', 50, 'g');
INSERT INTO reteta VALUES(28, 'Pui la Gratar', 'I28', 20, 'ml');
INSERT INTO reteta VALUES(29, 'Pui la Gratar', 'I29', 5, 'g');
INSERT INTO reteta VALUES(30, 'Pui la Gratar', 'I30', 2, 'g');
INSERT INTO reteta VALUES(31, 'Tiramisu', 'I31', 150, 'g');
INSERT INTO reteta VALUES(32, 'Tiramisu', 'I32', 50, 'ml');
INSERT INTO reteta VALUES(33, 'Tiramisu', 'I33', 100, 'g');
INSERT INTO reteta VALUES(34, 'Tiramisu', 'I34', 30, 'g');
INSERT INTO reteta VALUES(35, 'Tiramisu', 'I35', 10, 'g');
INSERT INTO reteta VALUES(36, 'Ciorba de Burta', 'I36', 200, 'g');
INSERT INTO reteta VALUES(37, 'Ciorba de Burta', 'I37', 150, 'g');
INSERT INTO reteta VALUES(38, 'Ciorba de Burta', 'I38', 50, 'g');
INSERT INTO reteta VALUES(39, 'Ciorba de Burta', 'I39', 30, 'g');
INSERT INTO reteta VALUES(40, 'Ciorba de Burta', 'I40', 50, 'ml');
INSERT INTO reteta VALUES(41, 'Sushi Combo', 'I41', 100, 'g');
INSERT INTO reteta VALUES(42, 'Sushi Combo', 'I42', 10, 'folii');
INSERT INTO reteta VALUES(43, 'Sushi Combo', 'I43', 50, 'g');
INSERT INTO reteta VALUES(44, 'Sushi Combo', 'I44', 30, 'g');
INSERT INTO reteta VALUES(45, 'Sushi Combo', 'I45', 20, 'g');
INSERT INTO reteta VALUES(46, 'Pasta Carbonara', 'I46', 200, 'g');
INSERT INTO reteta VALUES(47, 'Pasta Carbonara', 'I47', 100, 'g');
INSERT INTO reteta VALUES(48, 'Pasta Carbonara', 'I48', 2, 'buc');
INSERT INTO reteta VALUES(49, 'Pasta Carbonara', 'I49', 30, 'g');
INSERT INTO reteta VALUES(50, 'Pasta Carbonara', 'I50', 50, 'ml');
INSERT INTO reteta VALUES(51, 'Cheesecake', 'I51', 100, 'g');
INSERT INTO reteta VALUES(52, 'Cheesecake', 'I52', 50, 'g');
INSERT INTO reteta VALUES(53, 'Cheesecake', 'I53', 200, 'g');
INSERT INTO reteta VALUES(54, 'Cheesecake', 'I54', 50, 'g');
INSERT INTO reteta VALUES(55, 'Cheesecake', 'I55', 2, 'buc');
INSERT INTO reteta VALUES(56, 'Fish and Chips', 'I56', 150, 'g');
INSERT INTO reteta VALUES(57, 'Fish and Chips', 'I57', 200, 'g');
INSERT INTO reteta VALUES(58, 'Fish and Chips', 'I58', 50, 'g');
INSERT INTO reteta VALUES(59, 'Fish and Chips', 'I59', 1, 'buc');
INSERT INTO reteta VALUES(60, 'Fish and Chips', 'I60', 5, 'g');
INSERT INTO reteta VALUES(61, 'Sandwich Veggie', 'I61', 2, 'felii');
INSERT INTO reteta VALUES(62, 'Sandwich Veggie', 'I62', 30, 'g');
INSERT INTO reteta VALUES(63, 'Sandwich Veggie', 'I63', 1, 'buc');
INSERT INTO reteta VALUES(64, 'Sandwich Veggie', 'I64', 1, 'buc');
INSERT INTO reteta VALUES(65, 'Sandwich Veggie', 'I65', 50, 'g');
INSERT INTO reteta VALUES(66, 'Lasagna', 'I66', 150, 'g');
INSERT INTO reteta VALUES(67, 'Lasagna', 'I67', 200, 'g');
INSERT INTO reteta VALUES(68, 'Lasagna', 'I68', 100, 'g');
INSERT INTO reteta VALUES(69, 'Lasagna', 'I69', 50, 'g');
INSERT INTO reteta VALUES(70, 'Lasagna', 'I70', 30, 'g');
INSERT INTO reteta VALUES(71, 'Sorbet de Fructe', 'I71', 100, 'g');
INSERT INTO reteta VALUES(72, 'Sorbet de Fructe', 'I72', 30, 'g');
INSERT INTO reteta VALUES(73, 'Sorbet de Fructe', 'I73', 20, 'ml');

INSERT INTO inventar (id_iventar, id_produs, cantitate)
SELECT ROWNUM, id_ingredient, cantitate_produs 
FROM reteta;	

INSERT INTO personal (id_personal, prenume_personal, nume_personal, pozitie, tarif_pe_ora, id_superior) VALUES('ANG1', 'Andrei', 'Popescu', 'Bucatar', 30, 'ANG2');
INSERT INTO personal (id_personal, prenume_personal, nume_personal, pozitie, tarif_pe_ora, id_superior) VALUES('ANG2', 'Ioana', 'Radu', 'Bucatar Chef', 45.5, NULL);
INSERT INTO personal (id_personal, prenume_personal, nume_personal, pozitie, tarif_pe_ora, id_superior) VALUES('ANG3', 'Mihai', 'Dumitrescu', 'Bucatar', 30, 'ANG4');
INSERT INTO personal (id_personal, prenume_personal, nume_personal, pozitie, tarif_pe_ora, id_superior) VALUES('ANG4', 'Elena', 'Ionescu', 'Bucatar Chef', 45.5, NULL);
INSERT INTO personal (id_personal, prenume_personal, nume_personal, pozitie, tarif_pe_ora, id_superior) VALUES('ANG5', 'Alexandru', 'Dragomir', 'Bucatar', 30, 'ANG6');
INSERT INTO personal (id_personal, prenume_personal, nume_personal, pozitie, tarif_pe_ora, id_superior) VALUES('ANG6', 'Maria', 'Georgescu', 'Bucatar Chef', 45.5, NULL);
INSERT INTO personal (id_personal, prenume_personal, nume_personal, pozitie, tarif_pe_ora, id_superior) VALUES('ANG7', 'Cristian', 'Stancu', 'Bucatar', 30, 'ANG8');
INSERT INTO personal (id_personal, prenume_personal, nume_personal, pozitie, tarif_pe_ora, id_superior) VALUES('ANG8', 'Ana', 'Nicolescu', 'Bucatar Chef', 45.5, NULL);
INSERT INTO personal (id_personal, prenume_personal, nume_personal, pozitie, tarif_pe_ora, id_superior) VALUES('ANG9', 'Dorin', 'Constantin', 'Livrator', 15, NULL);
INSERT INTO personal (id_personal, prenume_personal, nume_personal, pozitie, tarif_pe_ora, id_superior) VALUES('ANG10', 'Raluca', 'Munteanu', 'Livrator', 15, NULL);
INSERT INTO personal (id_personal, prenume_personal, nume_personal, pozitie, tarif_pe_ora, id_superior) VALUES('ANG11', 'George', 'Iliescu', 'Livrator', 15, NULL);
INSERT INTO personal (id_personal, prenume_personal, nume_personal, pozitie, tarif_pe_ora, id_superior) VALUES('ANG12', 'Gabriela', 'Gheorghiu', 'Livrator', 15, NULL);
INSERT INTO personal (id_personal, prenume_personal, nume_personal, pozitie, tarif_pe_ora, id_superior) VALUES('ANG13', 'Adrian', 'Moldovan', 'Livrator', 15, NULL);
INSERT INTO personal (id_personal, prenume_personal, nume_personal, pozitie, tarif_pe_ora, id_superior) VALUES('ANG14', 'Simona', 'Iancu', 'Livrator', 15, NULL);
INSERT INTO personal (id_personal, prenume_personal, nume_personal, pozitie, tarif_pe_ora, id_superior) VALUES('ANG15', 'Florin', 'Popa', 'Livrator', 15, NULL);
INSERT INTO personal (id_personal, prenume_personal, nume_personal, pozitie, tarif_pe_ora, id_superior) VALUES('ANG16', 'Florina', 'Stoica', 'Livrator', 15, NULL);

INSERT INTO schimb VALUES('S1', 'Luni', '10:30', '14:00');
INSERT INTO schimb VALUES('S2', 'Luni', '18:30', '23:00');
INSERT INTO schimb VALUES('S3', 'Marti','10:30', '14:00');
INSERT INTO schimb VALUES('S4', 'Marti', '18:30', '23:00');
INSERT INTO schimb VALUES('S5', 'Miercuri', '10:30', '14:00');
INSERT INTO schimb VALUES('S6', 'Miercuri', '18:30', '23:00');
INSERT INTO schimb VALUES('S7', 'Joi', '10:30', '14:00');
INSERT INTO schimb VALUES('S8', 'Joi', '18:30', '23:00');
INSERT INTO schimb VALUES('S9', 'Vineri', '10:30','14:00');
INSERT INTO schimb VALUES('S10', 'Vineri', '18:30', '23:00');
INSERT INTO schimb VALUES('S11', 'Sambata', '10:30', '14:00');
INSERT INTO schimb VALUES('S12', 'Sambata', '18:30', '23:00');
INSERT INTO schimb VALUES('S13', 'Duminica', '10:30', '14:00');
INSERT INTO schimb VALUES('S14', 'Duminica', '18:30', '23:00');

INSERT INTO rute VALUES(1,'R1', TO_DATE('05-12-2023', 'DD-MM-YYYY'), 'S3', 'ANG1');
INSERT INTO rute VALUES(2,'R1', TO_DATE('05-12-2023', 'DD-MM-YYYY'), 'S3', 'ANG2');
INSERT INTO rute VALUES(3,'R1', TO_DATE('05-12-2023', 'DD-MM-YYYY'), 'S3', 'ANG9');
INSERT INTO rute VALUES(4,'R1', TO_DATE('05-12-2023', 'DD-MM-YYYY'), 'S4', 'ANG3');
INSERT INTO rute VALUES(5,'R1', TO_DATE('05-12-2023', 'DD-MM-YYYY'), 'S4', 'ANG4');
INSERT INTO rute VALUES(6,'R1', TO_DATE('05-12-2023', 'DD-MM-YYYY'), 'S4', 'ANG10');
INSERT INTO rute VALUES(7,'R2', TO_DATE('06-12-2023', 'DD-MM-YYYY'), 'S5', 'ANG5');
INSERT INTO rute VALUES(8,'R2', TO_DATE('06-12-2023', 'DD-MM-YYYY'), 'S5', 'ANG6');
INSERT INTO rute VALUES(9,'R2', TO_DATE('06-12-2023', 'DD-MM-YYYY'), 'S5', 'ANG11');
INSERT INTO rute VALUES(10,'R2', TO_DATE('06-12-2023', 'DD-MM-YYYY'), 'S6', 'ANG7');
INSERT INTO rute VALUES(11,'R2', TO_DATE('06-12-2023', 'DD-MM-YYYY'), 'S6', 'ANG8');
INSERT INTO rute VALUES(12,'R2', TO_DATE('06-12-2023', 'DD-MM-YYYY'), 'S6', 'ANG12');
INSERT INTO rute VALUES(13,'R3', TO_DATE('07-12-2023', 'DD-MM-YYYY'), 'S7', 'ANG1');
INSERT INTO rute VALUES(14,'R3', TO_DATE('07-12-2023', 'DD-MM-YYYY'), 'S7', 'ANG2');
INSERT INTO rute VALUES(15,'R3', TO_DATE('07-12-2023', 'DD-MM-YYYY'), 'S7', 'ANG13');
INSERT INTO rute VALUES(16,'R3', TO_DATE('07-12-2023', 'DD-MM-YYYY'), 'S8', 'ANG3');
INSERT INTO rute VALUES(17,'R3', TO_DATE('07-12-2023', 'DD-MM-YYYY'), 'S8', 'ANG4');
INSERT INTO rute VALUES(18,'R3', TO_DATE('07-12-2023', 'DD-MM-YYYY'), 'S8', 'ANG14');
INSERT INTO rute VALUES(19,'R4', TO_DATE('08-12-2023', 'DD-MM-YYYY'), 'S9', 'ANG5');
INSERT INTO rute VALUES(20,'R4', TO_DATE('08-12-2023', 'DD-MM-YYYY'), 'S9', 'ANG6');
INSERT INTO rute VALUES(21,'R4', TO_DATE('08-12-2023', 'DD-MM-YYYY'), 'S9', 'ANG15');
INSERT INTO rute VALUES(22,'R4', TO_DATE('08-12-2023', 'DD-MM-YYYY'), 'S10', 'ANG7');
INSERT INTO rute VALUES(23,'R4', TO_DATE('08-12-2023', 'DD-MM-YYYY'), 'S10', 'ANG8');
INSERT INTO rute VALUES(24,'R4', TO_DATE('08-12-2023', 'DD-MM-YYYY'), 'S10', 'ANG15');
INSERT INTO rute VALUES(25,'R5', TO_DATE('09-12-2023', 'DD-MM-YYYY'), 'S11', 'ANG1');
INSERT INTO rute VALUES(26,'R5', TO_DATE('09-12-2023', 'DD-MM-YYYY'), 'S11', 'ANG2');
INSERT INTO rute VALUES(27,'R5', TO_DATE('09-12-2023', 'DD-MM-YYYY'), 'S11', 'ANG16');
INSERT INTO rute VALUES(28,'R5', TO_DATE('09-12-2023', 'DD-MM-YYYY'), 'S12', 'ANG3');
INSERT INTO rute VALUES(29,'R5', TO_DATE('09-12-2023', 'DD-MM-YYYY'), 'S12', 'ANG4');
INSERT INTO rute VALUES(30,'R5', TO_DATE('09-12-2023', 'DD-MM-YYYY'), 'S12', 'ANG9');
INSERT INTO rute VALUES(31,'R6', TO_DATE('10-12-2023', 'DD-MM-YYYY'), 'S13', 'ANG5');
INSERT INTO rute VALUES(32,'R6', TO_DATE('10-12-2023', 'DD-MM-YYYY'), 'S13', 'ANG6');
INSERT INTO rute VALUES(33,'R6', TO_DATE('10-12-2023', 'DD-MM-YYYY'), 'S13', 'ANG10');
INSERT INTO rute VALUES(34,'R6', TO_DATE('10-12-2023', 'DD-MM-YYYY'), 'S14', 'ANG7');
INSERT INTO rute VALUES(35,'R6', TO_DATE('10-12-2023', 'DD-MM-YYYY'), 'S14', 'ANG8');
INSERT INTO rute VALUES(36,'R6', TO_DATE('10-12-2023', 'DD-MM-YYYY'), 'S14', 'ANG11');
INSERT INTO rute VALUES(37,'R7', TO_DATE('11-12-2023', 'DD-MM-YYYY'), 'S1', 'ANG1');
INSERT INTO rute VALUES(38,'R7', TO_DATE('11-12-2023', 'DD-MM-YYYY'), 'S1', 'ANG2');
INSERT INTO rute VALUES(39,'R7', TO_DATE('11-12-2023', 'DD-MM-YYYY'), 'S1', 'ANG12');
INSERT INTO rute VALUES(40,'R7', TO_DATE('11-12-2023', 'DD-MM-YYYY'), 'S2', 'ANG3');
INSERT INTO rute VALUES(41,'R7', TO_DATE('11-12-2023', 'DD-MM-YYYY'), 'S2', 'ANG4');
INSERT INTO rute VALUES(42,'R7', TO_DATE('11-12-2023', 'DD-MM-YYYY'), 'S2', 'ANG13');
INSERT INTO rute VALUES(43,'R8', TO_DATE('12-12-2023', 'DD-MM-YYYY'), 'S3', 'ANG5');
INSERT INTO rute VALUES(44,'R8', TO_DATE('12-12-2023', 'DD-MM-YYYY'), 'S3', 'ANG6');
INSERT INTO rute VALUES(45,'R8', TO_DATE('12-12-2023', 'DD-MM-YYYY'), 'S3', 'ANG14');
INSERT INTO rute VALUES(46,'R8', TO_DATE('12-12-2023', 'DD-MM-YYYY'), 'S4', 'ANG7');
INSERT INTO rute VALUES(47,'R8', TO_DATE('12-12-2023', 'DD-MM-YYYY'), 'S4', 'ANG8');
INSERT INTO rute VALUES(48,'R8', TO_DATE('12-12-2023', 'DD-MM-YYYY'), 'S4', 'ANG15');
INSERT INTO rute VALUES(49,'R9', TO_DATE('13-12-2023', 'DD-MM-YYYY'), 'S5', 'ANG1');
INSERT INTO rute VALUES(50,'R9', TO_DATE('13-12-2023', 'DD-MM-YYYY'), 'S5', 'ANG2');
INSERT INTO rute VALUES(51,'R9', TO_DATE('13-12-2023', 'DD-MM-YYYY'), 'S5', 'ANG16');
INSERT INTO rute VALUES(52,'R9', TO_DATE('13-12-2023', 'DD-MM-YYYY'), 'S6', 'ANG3');
INSERT INTO rute VALUES(53,'R9', TO_DATE('13-12-2023', 'DD-MM-YYYY'), 'S6', 'ANG4');
INSERT INTO rute VALUES(54,'R9', TO_DATE('13-12-2023', 'DD-MM-YYYY'), 'S6', 'ANG9');
INSERT INTO rute VALUES(55,'R10', TO_DATE('14-12-2023', 'DD-MM-YYYY'), 'S7', 'ANG5');
INSERT INTO rute VALUES(56,'R10', TO_DATE('14-12-2023', 'DD-MM-YYYY'), 'S7', 'ANG6');
INSERT INTO rute VALUES(57,'R10', TO_DATE('14-12-2023', 'DD-MM-YYYY'), 'S7', 'ANG10');
INSERT INTO rute VALUES(58,'R10', TO_DATE('14-12-2023', 'DD-MM-YYYY'), 'S8', 'ANG7');
INSERT INTO rute VALUES(59,'R10', TO_DATE('14-12-2023', 'DD-MM-YYYY'), 'S8', 'ANG8');
INSERT INTO rute VALUES(60,'R10', TO_DATE('14-12-2023', 'DD-MM-YYYY'), 'S8', 'ANG11');
INSERT INTO rute VALUES(61,'R11', TO_DATE('15-12-2023', 'DD-MM-YYYY'), 'S9', 'ANG1');
INSERT INTO rute VALUES(62,'R11', TO_DATE('15-12-2023', 'DD-MM-YYYY'), 'S9', 'ANG2');
INSERT INTO rute VALUES(63,'R11', TO_DATE('15-12-2023', 'DD-MM-YYYY'), 'S9', 'ANG12');
INSERT INTO rute VALUES(64,'R11', TO_DATE('15-12-2023', 'DD-MM-YYYY'), 'S10', 'ANG3');
INSERT INTO rute VALUES(65,'R11', TO_DATE('15-12-2023', 'DD-MM-YYYY'), 'S10', 'ANG4');
INSERT INTO rute VALUES(66,'R11', TO_DATE('15-12-2023', 'DD-MM-YYYY'), 'S10', 'ANG13');
INSERT INTO rute VALUES(67,'R12', TO_DATE('16-12-2023', 'DD-MM-YYYY'), 'S11', 'ANG5');
INSERT INTO rute VALUES(68,'R12', TO_DATE('16-12-2023', 'DD-MM-YYYY'), 'S11', 'ANG6');
INSERT INTO rute VALUES(69,'R12', TO_DATE('16-12-2023', 'DD-MM-YYYY'), 'S11', 'ANG14');
INSERT INTO rute VALUES(71,'R12', TO_DATE('16-12-2023', 'DD-MM-YYYY'), 'S12', 'ANG7');
INSERT INTO rute VALUES(72,'R12', TO_DATE('16-12-2023', 'DD-MM-YYYY'), 'S12', 'ANG8');
INSERT INTO rute VALUES(73,'R12', TO_DATE('16-12-2023', 'DD-MM-YYYY'), 'S12', 'ANG15');
INSERT INTO rute VALUES(74,'R13', TO_DATE('17-12-2023', 'DD-MM-YYYY'), 'S13', 'ANG1');
INSERT INTO rute VALUES(75,'R13', TO_DATE('17-12-2023', 'DD-MM-YYYY'), 'S13', 'ANG2');
INSERT INTO rute VALUES(76,'R13', TO_DATE('17-12-2023', 'DD-MM-YYYY'), 'S13', 'ANG16');
INSERT INTO rute VALUES(77,'R13', TO_DATE('17-12-2023', 'DD-MM-YYYY'), 'S14', 'ANG3');
INSERT INTO rute VALUES(78,'R13', TO_DATE('17-12-2023', 'DD-MM-YYYY'), 'S14', 'ANG4');
INSERT INTO rute VALUES(79,'R13', TO_DATE('17-12-2023', 'DD-MM-YYYY'), 'S14', 'ANG9');
INSERT INTO rute VALUES(80,'R14', TO_DATE('18-12-2023', 'DD-MM-YYYY'), 'S1', 'ANG5');
INSERT INTO rute VALUES(81,'R14', TO_DATE('18-12-2023', 'DD-MM-YYYY'), 'S1', 'ANG6');
INSERT INTO rute VALUES(82,'R14', TO_DATE('18-12-2023', 'DD-MM-YYYY'), 'S1', 'ANG10');
INSERT INTO rute VALUES(83,'R14', TO_DATE('18-12-2023', 'DD-MM-YYYY'), 'S2', 'ANG7');
INSERT INTO rute VALUES(84,'R14', TO_DATE('18-12-2023', 'DD-MM-YYYY'), 'S2', 'ANG8');
INSERT INTO rute VALUES(85,'R14', TO_DATE('18-12-2023', 'DD-MM-YYYY'), 'S2', 'ANG11');
INSERT INTO rute VALUES(86,'R15', TO_DATE('19-12-2023', 'DD-MM-YYYY'), 'S3', 'ANG1');
INSERT INTO rute VALUES(87,'R15', TO_DATE('19-12-2023', 'DD-MM-YYYY'), 'S3', 'ANG2');
INSERT INTO rute VALUES(88,'R15', TO_DATE('19-12-2023', 'DD-MM-YYYY'), 'S3', 'ANG12');
INSERT INTO rute VALUES(89,'R15', TO_DATE('19-12-2023', 'DD-MM-YYYY'), 'S4', 'ANG3');
INSERT INTO rute VALUES(90,'R15', TO_DATE('19-12-2023', 'DD-MM-YYYY'), 'S4', 'ANG4');
INSERT INTO rute VALUES(91,'R15', TO_DATE('19-12-2023', 'DD-MM-YYYY'), 'S4', 'ANG13');

UPDATE ingrediente
SET nume_ingredient = 'Crutoane Crocante'
WHERE id_ingredient = 'I16';

UPDATE ingrediente
SET cantitate = 120
WHERE nume_ingredient = 'Mozzarella';

UPDATE ingrediente
SET cantitate = cantitate * 1.1
WHERE unitate_de_masura = 'kg';

UPDATE personal
SET tarif_pe_ora = tarif_pe_ora * 1.1
WHERE UPPER(pozitie) LIKE '%CHEF%';

UPDATE ingrediente
SET cantitate = cantitate * 2
WHERE cantitate < 50;

UPDATE reteta
SET cantitate_ingredient = cantitate_ingredient * 1.05
WHERE unitate_de_masura = 'g';

DELETE FROM ingrediente
WHERE cantitate < 5;

MERGE INTO inventar USING reteta
ON (inventar.id_produs = reteta.id_ingredient)
WHEN MATCHED THEN 
UPDATE SET inventar.cantitate = reteta.cantitate_ingredient
WHEN NOT MATCHED THEN 
INSERT (id_produs, cantitate) VALUES (reteta.id_ingredient, reteta.cantitate_ingredient);
