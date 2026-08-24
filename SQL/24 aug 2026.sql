USE jspider ;

CREATE TABLE director(
dir_id CHAR(3) PRIMARY KEY,
dir_name VARCHAR(15) NOT NULL,
dir_mail VARCHAR(30)
);

CREATE TABLE movie(
m_id CHAR(3) PRIMARY KEY ,
m_name VARCHAR(50) NOT NULL,
rel_date date,
dir_id CHAR(3) ,
FOREIGN KEY(dir_id) REFERENCES director(dir_id)
);


INSERT INTO director VALUES('D01','RAJAMOULI','r@gmail.com');
INSERT INTO director VALUES('D02','manoj','am@gmail.com');
INSERT INTO director VALUES('D03','Prashant','p@gmail.com');

SELECT * FROM director;

INSERT INTO movie VALUES ('101', 'KGF1', '2018-02-12', 'd03');
INSERT INTO movie VALUES ('102', 'bahubali', '2016-03-20', 'd01');
INSERT INTO movie VALUES ('103', 'salaar', '2024-12-16', 'd03');
INSERT INTO movie VALUES ('104', 'KGF7', '2030-04-19', 'd02');

SELECT * FROM movie;



