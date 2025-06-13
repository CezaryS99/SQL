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

-- 31. Wyświetl wszystkich pracowników z imieniem zaczynającym się na E i kończącym się na a.
SELECT * FROM employees WHERE first_name LIKE 'E%a';

-- 32. Wyświetl wszystkich pracowników z adresem email innym niż gmail.com. Rekordy sortuj alfabetycznie po kolumnie
SELECT * FROM employees WHERE email NOT LIKE '%gmail.com' ORDER BY email ASC;

-- 33. Wyświetl wszystkich pracowników z imieniem Adam, Alice oraz Tom.
SELECT * FROM employees WHERE first_name IN ('Adam','Alice','Tom');

-- 34. Wyświetl wszystkich pracowników, którzy nie są zatrudnieni w dziale o numerze id 2, 3, oraz 5.
SELECT * FROM employees WHERE department_id NOT IN ('2','3','5');

-- 35. Wyświetl wszystkie stanowiska pracy, gdzie płaca minimalna jest poza przedziałem od 3000 do 8000.
SELECT * FROM jobs WHERE min_salary NOT BETWEEN 3000 AND 8000;

-- 36. Wyświetl wszystkich pracowników, którzy zostali zatrudnieni w 2015 oraz 2016 roku, a także nie pracują w dziale o numerze id 2 oraz 3.
SELECT * FROM employees WHERE YEAR(hire_date) IN ('2015', '2016') AND department_id NOT IN (2, 3);

-- 37. Wyświetl wszystkich pracowników, którzy urodzili się w 1990 roku oraz sortuj rekordy od najstarszego pracownika.
SELECT * FROM employees WHERE YEAR (birth_date) = 1990 ORDER BY birth_date ASC;

-- 38. Wyświetl imię, nazwisko oraz datę urodzenia pracowników zatrudnionych na stanowisku pracy o numerze id 3. Informacje wyświetl w jednej kolumnie w formacie <imię> <nazwisko> - <data_urodzenia> i nadaj jej nazwę employee.
SELECT CONCAT(first_name,' ',last_name,' ',birth_date) AS employee FROM employees WHERE job_id = 3;

-- 39. Wyświetl imię oraz nazwisko wszystkich pracowników a także nazwę działu, w którym pracują.
SELECT e.first_name, e.last_name, d.department_name FROM employees AS e INNER JOIN departments AS d;

-- 40. Wyświetl nazwę wszystkich miast oraz nazwę działów firmy, które znajdują się w danym mieście. Gdy miasto nie posiada żadnego działu umieść wartość NULL. Rekordy sortuj alfabetycznie po kolumnie miasto.
SELECT l.city, d.department_name FROM locations AS l INNER JOIN departments AS d ORDER BY l.city ASC;