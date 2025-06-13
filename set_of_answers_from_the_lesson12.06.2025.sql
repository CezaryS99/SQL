-- ZADANIA CREATE, INSERT, UPDATE, ALTER
-- 1. Utwórz bazę danych / schema o nazwie firma_budowalana_db

CREATE DATABASE firma_budowlana_db;
USE firma_budowlana_db;

-- W bazie utwórz następujące tabele:
-- a) tabela o nazwie pracownicy z kolumnami:
-- - pracownik_id,
-- - pracownik_imie,
-- - pracownik_nazwisko,
-- - pracownik_stanowisko
-- Ustaw odpowiedni PRIMARY KEY i typy danych

CREATE TABLE pracownicy(
	pracownik_id INT AUTO_INCREMENT PRIMARY KEY,
    pracownik_imie VARCHAR(255) NOT NULL,
    pracownik_nazwisko VARCHAR(255) NOT NULL,
    pracownik_stanowisko VARCHAR(255) NOT NULL
);

-- b) tabela o nazwie oddziały z kolumnami
-- - oddzial_id,
-- - oddzial_miasto
-- - oddzial_specjalizacja
-- Ustaw odpowiedni PRIMARY KEY i typy danych

CREATE TABLE oddzialy(
	oddzial_id INT AUTO_INCREMENT PRIMARY KEY,
    oddzial_miasto VARCHAR(255) NOT NULL,
    oddzial_specjalizacja VARCHAR(255) NOT NULL
);

-- c) tabela o nazwie dostawcy z kolumnami:
-- - dostawca_id,
-- - dostawca_nazwa,
-- - dostawca_miasto,
-- - dostawca_koszt
-- Ustaw odpowiedni PRIMARY KEY i typy danych
CREATE TABLE dostawcy(
	dostawca_id INT AUTO_INCREMENT PRIMARY KEY,
    dostawca_nazwa VARCHAR(255) NOT NULL,
    dostawca_miasto VARCHAR(255) NOT NULL,
    dostawca_koszt FLOAT
);

d) tabela o nazwie realizacje z kolumnami:
- realizacja_id
- realizacja_miasto
- realizacja_koszt
- realizacja_blad
Ustaw odpowiedni PRIMARY KEY i typy danych

CREATE TABLE realizacje(
	realizacja_id INT AUTO_INCREMENT PRIMARY KEY,
    realizacja_miasto VARCHAR(255) NOT NULL,
    realizacja_koszt FLOAT NOT NULL,
    realizacja_blad  INT 
);

-- 2. W tabeli pracownicy umieść następujące rekordy:
-- a) Jan, Kowalski, murarz
-- b) Anna, Nowak, tynkarz
-- c) Alicja, Kowalska, kierownik
INSERT INTO pracownicy(pracownik_imie, pracownik_nazwisko, pracownik_stanowisko)
VALUES ("Jan","Kowalski", "Murarz");
INSERT INTO pracownicy(pracownik_imie, pracownik_nazwisko, pracownik_stanowisko)
VALUES ("Anna","Nowak", "Tynkarz");
INSERT INTO pracownicy(pracownik_imie, pracownik_nazwisko, pracownik_stanowisko)
VALUES ("Alicja","Kowalska", "Kierownik");

-- 3. W tabeli dostawcy umieść następujące rekordy
-- a) Janex, Szczecin, 4500
-- b) Marcinex, Warszawa, 5000,
-- c) Dawidex, Katowice, 4000
INSERT INTO dostawcy(dostawca_nazwa, dostawca_miasto, dostawca_koszt)
VALUES ("Janex","Szczecin", 4500);
INSERT INTO dostawcy(dostawca_nazwa, dostawca_miasto, dostawca_koszt)
VALUES ("Marcinex","Warszawa", 5000);
INSERT INTO dostawcy(dostawca_nazwa, dostawca_miasto, dostawca_koszt)
VALUES ("Dawidex","Katowice", 4000);

-- 4. W tabeli realizacje umieść następujące rekordy
-- a) Katowice,2 000 000,
-- b) Będzin, 1 500 000,
-- c) Sosnowiec, 1 800 000
INSERT INTO realizacje(realizacja_miasto, realizacja_koszt)
VALUES ("Katowice", 2000000);
INSERT INTO realizacje(realizacja_miasto, realizacja_koszt)
VALUES ("Będzin", 1500000);
INSERT INTO realizacje(realizacja_miasto, realizacja_koszt)
VALUES ("Sosnowiec", 1800000);


SELECT * FROM pracownicy;
SELECT * FROM dostawcy;
SELECT * FROM oddzialy;
SELECT * FROM realizacje;

DROP TABLE realizacje;
SET sql_safe_updates = 0;

-- 5. Zmień nazwę dostawcy Dawidex na Dawidex Corporation
UPDATE dostawcy SET dostawca_nazwa = "Dawidex Corporation" WHERE dostawca_id = 3;

-- 6. Zmień imię pracownika Alicja na Dorota
UPDATE pracownicy SET pracownik_imie = "Dorota" WHERE pracownik_id = 3;

-- 7. W tabeli realizacje zmień nazwę kolumny realizacja_blad na realizacja_miesiac
ALTER TABLE realizacje RENAME COLUMN realizacja_blad TO realizacja_miesiac;

-- 8. Zmień typ danych w kolumnie realizacja_miesiac na VARCHAR o dlugosci 100
ALTER TABLE realizacje CHANGE realizacja_miesiac realizacja_miesiac VARCHAR(100);

-- 9. Zaktualizuj kolumnę realizacja_miesiac we wszystkich dotychczasowych rekordach z tabeli realizacje na wartość Maj
UPDATE realizacje SET realizacja_miesiac = 'Maj';

-- 10. Usuń realizację z miasta Sosnowiec z tabeli realizacje
DELETE FROM realizacje WHERE realizacja_miasto = 'Sosnowiec';