-- ZADANIA SQL: Zestaw 3
-- (JOIN, GROUP BY, HAVING COUNT)
-- 1. Wyświetl imię oraz nazwisko wszystkich pracowników, nazwę działu, w którym pracują a także nazwę miasta, w którym siedzibę ma dany dział.
SELECT  e.first_name AS Imię, e.last_name AS Nazwisko, d.department_name AS Dział, l.city AS Miasto FROM employees AS e
JOIN departments AS d ON e.department_id = d.id
JOIN locations AS l ON d.location_id = l.id;

-- 2. Wyświetl nazwę wszystkich działów oraz nazwę miast, w których znajdują się dane działy. Rekordy sortuj alfabetycznie po kolumnie miasto.
SELECT d.department_name AS Dział, l.city AS Miasto FROM departments AS d
JOIN locations AS l ON d.location_id = l.id ORDER BY l.city ASC;

-- 3. Wyświetl imię oraz datę urodzenia pracowników urodzony po 1 stycznia 3. Wyświetl imię oraz datę urodzenia pracowników urodzony po 1 stycznia 1994 r. a także nazwę działu, w którym pracują.
SELECT e.first_name AS Imię, e.birth_date AS Data_urodzenia, d.department_name AS Dział FROM employees AS e
JOIN departments AS d ON e.department_id = d.id
WHERE (e.birth_date) > '1994-01-01' ORDER BY e.birth_date ASC;

-- 4. Wyświetl imię pracowników zatrudnionych w dziale o numerze id 1 i 6, a także nazwę działu, w którym pracują oraz nazwę miasta, w którym znajduje się dany dział. Rekordy sortuj alfabetycznie po kolumnie imię.
SELECT e.first_name AS Imię, d.department_name AS Dział, l.city AS Miasto FROM employees AS e
JOIN departments AS d ON e.department_id = d.id
JOIN locations AS l ON d.location_id = l.id
WHERE department_id IN ('1','6') ORDER BY e.first_name ASC;

-- 5. Wyświetl ilu jest pracowników w każdym dziale. Liczbę pracowników zapisz w kolumnie number_of_employees.
SELECT d.department_name AS Dział, COUNT(e.department_id) AS number_of_employees FROM employees AS e
JOIN departments AS d ON e.department_id = d.id GROUP BY d.department_name;

-- 6. Wyświetl ilu jest pracowników na każdym stanowisku pracy. Liczbę pracowników zapisz w kolumnie number_of_employees oraz posortuj rekordy malejąco.
SELECT j.title As Stanowisko, COUNT(e.id) AS number_of_employees FROM employees AS e
JOIN jobs AS j ON e.job_id = j.id
GROUP BY j.id, j.title 
ORDER BY number_of_employees DESC;

-- 7. Wyświetl ile jest działów w każdym mieście. Liczbę działów zapisz w kolumnie number_of_departments.
SELECT l.city AS Miasto, COUNT(d.id) AS number_of_departments 
FROM departments AS d 
JOIN locations AS l ON d.location_id = l.id 
GROUP BY l.city;

-- 8. Wyświetl ilu jest pracowników na każdym stanowisku pracy w poszczególnych działach. Liczbę pracowników zapisz w kolumnie number_of_employees.
SELECT d.department_name AS Dział, j.title AS Stanowisko, COUNT(e.id) AS number_of_employees FROM employees AS e
JOIN departments AS d ON e.department_id  = d.id
JOIN jobs AS j ON e.job_id = j.id
GROUP BY d.department_name, j.title
ORDER BY d.department_name, j.title;

9. Wyświetl ilu jest pracowników na każdym stanowisku pracy w
poszczególnych działach. Liczbę pracowników zapisz w kolumnie
number_of_employees. Dodatkowo dodaj kolumnę miasto, (w którym
znajduje się dział), nazwa działu oraz nazwa stanowiska pracy. Rekordy
posortuj rosnąco po liczbie pracowników.
SELECT d.department_name AS Dział, j.title AS Stanowisko, l.city AS Miasto, COUNT(e.id) AS number_of_employees FROM employees AS e
JOIN departments AS d ON e.department_id  = d.id
JOIN jobs AS j ON e.job_id = j.id
JOIN locations as l ON d.location_id  = l.id
GROUP BY l.city, d.department_name, j.title
ORDER BY number_of_employees ASC;

-- 10. Wyświetl wszystkie nazwiska, które nosi przynajmniej dwóch pracowników. Dodatkowo zapisz liczbę pracowników w kolumnie number_of_employees oraz posortuj rekordy malejąco po liczbie pracowników.
SELECT last_name AS Nazwisko, COUNT(*) AS number_of_employees FROM employees
GROUP BY last_name
HAVING COUNT(*) >= 2
ORDER BY number_of_employees DESC;

-- 11. Wyświetl wszystkie imiona zaczynające się od litery A, które nosi przynajmniej dwóch pracowników. Dodatkowo zapisz liczbę pracowników w kolumnie number_of_employees.
SELECT first_name AS Imię, COUNT(*) AS number_of_employees FROM employees
WHERE first_name LIKE 'A%'
GROUP BY first_name
HAVING COUNT(*) >= 2;

-- 12. Wyświetl nazwy wszystkich stanowisk pracy, na których zatrudniono więcej niż pięciu pracowników. Dodatkowo zapisz liczbę pracowników w kolumnie number_of_employees oraz posortuj rekordy rosnąco po liczbie pracowników zatrudnionych na poszczególnych stanowiskach.
SELECT j.title AS Stanowisko, COUNT(e.id) AS number_of_employees FROM employees AS e
JOIN jobs AS j ON e.job_id = j.id
GROUP BY j.id, j.title
HAVING COUNT(e.id) >= 5
ORDER BY number_of_employees ASC;

-- 13. Wyświetl nazwy działów znajdujących się w mieście Cracow, w których pracuje przynajmniej pięciu pracowników. Dodatkowo zapisz liczbę pracowników w kolumnie number_of_employees.
SELECT d.department_name AS Dział, COUNT(e.id) AS number_of_employees FROM employees AS e
JOIN departments AS d ON e.department_id = d.id
JOIN locations AS l ON d.location_id = l.id
WHERE l.city = 'Cracow' 
GROUP BY d.id, d.department_name
HAVING COUNT(e.id) >= 5;
