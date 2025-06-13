-- ZADANIA SQL: Zestaw 2 (LIKE, IN, ORDER BY, NOT, NOT IN, BETWEEN, CONCAT)
-- 26. Wyświetl wszystkie stanowiska pracy, w których nazwa zaczyna się od HR.
SELECT * FROM jobs WHERE title LIKE 'HR%';

-- 27. Wyświetl wszystkie stanowiska pracy, gdzie w nazwie znajduje się wyraz Software na początku, w środku lub na końcu nazwy stanowiska pracy.
SELECT * FROM jobs WHERE title LIKE '%Software%';

-- 28. Wyświetl ile wynosi średnia płaca minimalna dla stanowisk pracy, których nazwa zaczyna się od Sales. Zmień nazwę kolumny na average_min_salary_sales.
SELECT AVG(min_salary) AS average_min_salary_sales FROM jobs WHERE title LIKE 'Sales%';

-- 29. Wyświetl wszystkie stanowiska pracy, gdzie w nazwie druga litera to u.
SELECT * FROM jobs WHERE title LIKE '_u%';

-- 30. Wyświetl wszystkich pracowników z imieniem zaczynającym się na A i posiadającym przynajmniej pięć znaków.
SELECT * FROM employees WHERE first_name LIKE 'A%' AND LENGTH(first_name) >= 5;

-- 31. Wyświetl wszystkich pracowników z imieniem zaczynającym się na E i
kończącym się na a.
SELECT * FROM employees WHERE first_name LIKE 'E%a';

32. Wyświetl wszystkich pracowników z adresem email innym niż gmail.com.
Rekordy sortuj alfabetycznie po kolumnie

33. Wyświetl wszystkich pracowników z imieniem Adam, Alice oraz Tom.
34. Wyświetl wszystkich pracowników, którzy nie są zatrudnieni w dziale o numerze
id 2, 3, oraz 5.
35. Wyświetl wszystkie stanowiska pracy, gdzie płaca minimalna jest poza
przedziałem od 3000 do 8000.
36. Wyświetl wszystkich pracowników, którzy zostali zatrudnieni w 2015 oraz 2016
roku, a także nie pracują w dziale o numerze id 2 oraz 3.
37. Wyświetl wszystkich pracowników, którzy urodzili się w 1990 roku oraz sortuj
rekordy od najstarszego pracownika.
38. Wyświetl imię, nazwisko oraz datę urodzenia pracowników zatrudnionych na
stanowisku pracy o numerze id 3. Informacje wyświetl w jednej kolumnie w
formacie <imię> <nazwisko> - <data_urodzenia> i nadaj jej nazwę employee.
39. Wyświetl imię oraz nazwisko wszystkich pracowników a także nazwę działu, w
którym pracują.
40. Wyświetl nazwę wszystkich miast oraz nazwę działów firmy, które znajdują się
w danym mieście. Gdy miasto nie posiada żadnego działu umieść wartość NULL.
Rekordy sortuj alfabetycznie po kolumnie miasto.

SELECT * FROM jobs;