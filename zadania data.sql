DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS locations;
DROP TABLE IF EXISTS jobs;


CREATE TABLE locations (id int NOT NULL AUTO_INCREMENT, street_address varchar(255), postal_code varchar(6), city varchar(255), PRIMARY KEY (id));

INSERT INTO locations (street_address, postal_code, city) VALUES ('Mickiewicza 20', '31-478', 'Cracow');
INSERT INTO locations (street_address, postal_code, city) VALUES ('Wyzwolenia 7', '00-028', 'Warsaw');
INSERT INTO locations (street_address, postal_code, city) VALUES ('Portowa 2', '81-258', 'Gdynia');
INSERT INTO locations (city) VALUES ('Katowice');
INSERT INTO locations (city) VALUES ('Opole');


CREATE TABLE departments (id int NOT NULL AUTO_INCREMENT, department_name varchar(255), location_id int NOT NULL, PRIMARY KEY (id), FOREIGN KEY (location_id) REFERENCES locations(id));

INSERT INTO departments (department_name, location_id) VALUES ('Marketing', 1);
INSERT INTO departments (department_name, location_id) VALUES ('HR', 1);
INSERT INTO departments (department_name, location_id) VALUES ('IT', 1);
INSERT INTO departments (department_name, location_id) VALUES ('Sales', 2);
INSERT INTO departments (department_name, location_id) VALUES ('Custom Service', 3);
INSERT INTO departments (department_name, location_id) VALUES ('IT', 3);
INSERT INTO departments (department_name, location_id) VALUES (NULL, 3);


CREATE TABLE jobs (id int NOT NULL AUTO_INCREMENT, title varchar(255), min_salary int, max_salary int, PRIMARY KEY (id));

INSERT INTO jobs (title, min_salary, max_salary) VALUES ('Junior Software Developer', 3000, 6000);
INSERT INTO jobs (title, min_salary, max_salary) VALUES ('Software Engineer', 6000, 9000);
INSERT INTO jobs (title, min_salary, max_salary) VALUES ('Senior Software Engineer', 9000, 13000);
INSERT INTO jobs (title, min_salary, max_salary) VALUES ('Lead Software Engineer', 13000, 17000);
INSERT INTO jobs (title, min_salary, max_salary) VALUES ('Marketing Specialist', 3000, 8000);
INSERT INTO jobs (title, min_salary, max_salary) VALUES ('Marketing Manager', 8000, 12000);
INSERT INTO jobs (title, min_salary, max_salary) VALUES ('HR Assistant', 3000, 5000);
INSERT INTO jobs (title, min_salary, max_salary) VALUES ('HR Specialist', 4500, 6500);
INSERT INTO jobs (title, min_salary, max_salary) VALUES ('HR Manager', 7000, 12000);
INSERT INTO jobs (title, min_salary, max_salary) VALUES ('Account Executive', 3000, 6000);
INSERT INTO jobs (title, min_salary, max_salary) VALUES ('Sales Representative', 5000, 7000);
INSERT INTO jobs (title, min_salary, max_salary) VALUES ('Sales Manager', 8000, 12000);
INSERT INTO jobs (title, min_salary, max_salary) VALUES ('Customer Service Representative', 2500, 4500);
INSERT INTO jobs (title, min_salary, max_salary) VALUES ('Customer Service Agent', 4000, 6000);
INSERT INTO jobs (title, min_salary, max_salary) VALUES ('Support Specialist', 4000, 7000);


CREATE TABLE employees (id int NOT NULL AUTO_INCREMENT, first_name varchar(255), last_name varchar(255), email varchar(255), birth_date datetime, hire_date datetime, job_id int NOT NULL, department_id int NOT NULL, PRIMARY KEY (id), FOREIGN KEY (job_id) REFERENCES jobs(id), FOREIGN KEY (department_id) REFERENCES departments(id));

INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Linda', 'Smith', 'linda_smith@gmail.com', '1994-03-22', '2019-04-22', 5, 1);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Elara', 'Mustafa', 'elara_mustafa@gmail.com', '1990-03-15', '2017-09-16', 5, 1);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Ethan', 'Cote', 'ethan_cote@yahoo.com', '1986-12-01', '2014-05-05', 6, 1);

INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Kiran', 'Hull', 'kiran.hull@gmail.com', '1994-05-28', '2020-04-12', 7, 2);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Diana', 'Greene', 'diana_greene@yahoo.com', '1993-02-13', '2018-11-11', 7, 2);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Jerry', 'Monroe', 'jerry_monroe@gmail.com', '1991-03-10', '2016-02-17', 8, 2);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Kareena', 'Bellamy', 'kareena_bel@yahoo.com', '1990-12-06', '2016-06-05', 8, 2);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Alice', 'Martinez', 'alice_martinez@gmail.com', '1988-02-02', '2014-12-22', 9, 2);

INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Tom', 'Smith', 'tom_smith@gmail.com', '1988-10-02', '2019-11-05', 1, 3);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Adam', 'Spencer', 'adam_spen@yahoo.com', '1993-09-25', '2019-12-12', 1, 3);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Alice', 'Johnson', 'alice123@gmail.com', '1995-05-21', '2020-06-16', 1, 3);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Anna', 'Williams', 'williams.anna@gmail.com', '1992-03-18', '2019-07-07', 1, 3);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Emma', 'Martinez', 'emma_martinez@gmail.com', '1990-01-28', '2018-06-01', 2, 3);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Olivia', 'Martinez', 'olivia.martinez@yahoo.com', '1990-10-11', '2018-01-08', 2, 3);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Noah', 'Jones', 'noahjones@yahoo.com', '1988-02-20', '2018-08-22', 2, 3);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('James', 'Miller', 'miller_james90@yahoo.com', '1990-10-02', '2017-10-10', 2, 3);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Tom', 'Lopez', 'tom.lopez@gmail.com', '1987-10-08', '2017-05-12', 2, 3);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Lucas', 'Anderson', 'lucas_anderson@gmail.com', '1988-01-09', '2019-02-01', 2, 3);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Mason', 'Taylor', 'mason90taylor@gmail.com', '1989-08-10', '2018-06-01', 2, 3);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('John', 'Brown', 'johnbrown@gmail.com', '1985-06-12', '2010-02-05', 3, 3);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Amelia', 'Lee', 'amelialee123@gmail.com', '1987-06-12', '2015-03-18', 3, 3);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Evelyn', 'Perez', 'everyn_perez@yahoo.com', '1985-01-20', '2012-10-01', 3, 3);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Jack', 'White', 'jack_white@gmail.com', '1984-12-01', '2011-09-15', 3, 3);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Oscar', 'Clark', 'clark_oscar@yahoo.com', '1985-12-24', '2012-11-20', 3, 3);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Noah', 'Martinez', 'noahmartinez@yahoo.com', '1984-07-25', '2013-10-10', 3, 3);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Shirley', 'Sosa', 'shirkey.sosah@gmail.com', '1984-10-02', '2014-04-02', 4, 3);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Oran', 'Zamora', 'oran.zamora@gmail.com', '1985-05-13', '2012-03-10', 4, 3);

INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Izabelle', 'Torres', 'torres.izabelle@gmail.com', '1993-05-11', '2019-01-22', 10, 4);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Braden', 'King', 'braden_king@yahoo.com', '1993-12-23', '2018-10-22', 10, 4);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Arvin', 'Bone', 'arvin_bone@gmail.com', '1990-12-15', '2017-10-19', 11, 4);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Robin', 'Nolan', 'robin.nolan@yahoo.com', '1990-10-16', '2017-09-09', 11, 4);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Rossa', 'Pitt', 'rossa_pitt@gmail.com', '1987-10-11', '2014-08-12', 12, 4);

INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Taylor', 'Walton', 'taylor_walton@gmail.com', '1993-04-25', '2018-02-13', 13, 5);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Lilly', 'Moore', 'moore_lilly@yahoo.com', '1992-10-26', '2017-10-02', 14, 5);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Martina', 'Roman', 'martina_roman@gmail.com', '1991-02-21', '2016-09-10', 14, 5);

INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Colton', 'Bray', 'colton.bray@gmail.com', '1994-04-25', '2019-03-22', 1, 6);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Jack', 'Moore', 'jack_moore@yahoo.com', '1993-02-02', '2017-11-21', 2, 6);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Barbara', 'Owens', 'barbara_owens@gmail.com', '1992-09-14', '2016-11-04', 2, 6);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Ira', 'Adams', 'ira_adams@gmail.com', '1990-01-14', '2015-05-12', 3, 6);
INSERT INTO employees (first_name, last_name, email, birth_date, hire_date, job_id, department_id) VALUES ('Adam', 'Irwin', 'adam.irwin@yahoo.com', '1987-09-09', '2014-03-27', 4, 6);
