-- Universities table
CREATE TABLE universities (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    country VARCHAR(100),
    city VARCHAR(100),
    website VARCHAR(255)
);

-- Courses table
CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    level VARCHAR(50)
);

-- Programs table
CREATE TABLE programs (
    id SERIAL PRIMARY KEY,
    university_id INT,
    course_id INT,
    intake VARCHAR(50),
    duration VARCHAR(50),
    joint_degree BOOLEAN,

    FOREIGN KEY (university_id) REFERENCES universities(id),
    FOREIGN KEY (course_id) REFERENCES courses(id)
);