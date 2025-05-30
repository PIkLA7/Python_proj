CREATE DATABASE IF NOT EXISTS college_schedule;

USE college_schedule;

CREATE TABLE groups (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE teachers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE subjects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    total_hours INT NOT NULL,
    hours_per_week INT NOT NULL
);

CREATE TABLE schedule (
    id INT AUTO_INCREMENT PRIMARY KEY,
    group_id INT,
    teacher_id INT,
    subject_id INT,
    day_of_week VARCHAR(50),
    pair_number INT,
    FOREIGN KEY (group_id) REFERENCES groups(id),
    FOREIGN KEY (teacher_id) REFERENCES teachers(id),
    FOREIGN KEY (subject_id) REFERENCES subjects(id)
);
