CREATE TABLE OCCUPATIONS (NAME VARCHAR(15),OCCUPATION VARCHAR(15));

INSERT INTO OCCUPATIONS VALUES('Samantha','Doctor');
INSERT INTO OCCUPATIONS VALUES('Julia','Actor');
INSERT INTO OCCUPATIONS VALUES('Maria','Actor');
INSERT INTO OCCUPATIONS VALUES('Meera','Singer');
INSERT INTO OCCUPATIONS VALUES('Ashley','Professor');
INSERT INTO OCCUPATIONS VALUES('Ketty','Professor');
INSERT INTO OCCUPATIONS VALUES('Christeen','Professor');
INSERT INTO OCCUPATIONS VALUES('Jane','Actor');
INSERT INTO OCCUPATIONS VALUES('Jenny','Doctor');
INSERT INTO OCCUPATIONS VALUES('Priya','Singer');

-- Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first
-- letter of each profession as a parenthetical (i.e.: enclosed in parentheses).
SELECT CONCAT(name,'(',SUBSTRING(OCCUPATION,1,1),')') AS RESULT_SET1
FROM OCCUPATIONS
ORDER BY NAME;

-- Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences
-- in ascending order, and output them in the following format:
-- There are total of [occupation_count] [occupation]s.

SELECT CONCAT('There are total of ',COUNT(OCCUPATION),' ',LOWER(OCCUPATION),'s.') AS RESULT_SET2
FROM OCCUPATIONS
GROUP by OCCUPATION
ORDER by COUNT(OCCUPATION), OCCUPATION;