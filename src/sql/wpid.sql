CREATE TABLE user
(
  id BIGINT NOT NULL AUTO_INCREMENT,
  username VARCHAR(64) NOT NULL,
  password VARCHAR(64) NOT NULL,
  first_name VARCHAR(64) NOT NULL,
  last_name VARCHAR(64) NOT NULL,
  email VARCHAR(64) NOT NULL,
  birth_date DATE NOT NULL,
  gender VARCHAR(16) NOT NULL,
  phone VARCHAR(16),
  PRIMARY KEY (ID)
);

CREATE TABLE project
(
  id BIGINT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  description VARCHAR(1000),
  created_by_id BIGINT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (created_by_id) REFERENCES user(id)
);

INSERT INTO user (username, password, first_name, last_name, email, birth_date, gender, phone)
VALUES ('admin', 'admin123', 'System', 'Admin', 'wpid.admin@gmail.com', '1900-01-01', 'FEMALE', '');

-- CREATE TABLE question
-- (
--   id INT NOT NULL AUTO_INCREMENT,
--   label VARCHAR(255) NOT NULL,
--   max_duration_in_min INT,
--   required BOOLEAN NOT NULL,
--   quiz_id INT NOT NULL,
--   PRIMARY KEY (ID),
--   FOREIGN KEY (quiz_id) REFERENCES quiz(id)
-- );
--
-- CREATE TABLE answer
-- (
--   id INT NOT NULL AUTO_INCREMENT,
--   label VARCHAR(255) NOT NULL,
--   right_answer BOOLEAN NOT NULL,
--   answered BOOLEAN NOT NULL,
--   question_id INT NOT NULL,
--   PRIMARY KEY (ID),
--   FOREIGN KEY (question_id) REFERENCES question(id)
-- );
--
-- CREATE TABLE publication
-- (
--   id INT NOT NULL AUTO_INCREMENT,
--   quiz_id INT NOT NULL,
--   publish_for VARCHAR(20) NOT NULL,
--   published_on TIMESTAMP NOT NULL,
--   PRIMARY KEY (ID),
--   FOREIGN KEY (quiz_id) REFERENCES quiz(id)
-- );
--
-- CREATE TABLE publish_to
-- (
--   publication_id INT NOT NULL,
--   email VARCHAR(64) NOT NULL,
--   FOREIGN KEY (publication_id) REFERENCES publication(id)
-- );
