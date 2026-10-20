CREATE TABLE "Faculties" (
    faculty_code SERIAL PRIMARY KEY,
    faculty_name VARCHAR(100) NOT NULL,
    foundation_date DATE,
    activity_type TEXT,
    max_students INT
);

CREATE TABLE Groups (
    group_number VARCHAR(10) PRIMARY KEY,
    max_people INT,
    faculty_code INT NOT NULL,
    curator VARCHAR(100)
);

ALTER TABLE Groups
ADD CONSTRAINT fk_groups_faculties
FOREIGN KEY (faculty_code)
REFERENCES "Faculties" (faculty_code)
ON UPDATE CASCADE
ON DELETE CASCADE;
