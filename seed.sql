
DROP DATABASE IF EXISTS adopt;

CREATE DATABASE adopt;

\c adopt

CREATE TABLE pets
(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL, 
    species TEXT NOT NULL,
    photo_url TEXT,
    age INT,
    notes TEXT,
    available BOOLEAN NOT NULL DEFAULT TRUE
);

INSERT INTO pets
  (name, species, photo_url, age, notes, available)
VALUES
  ('Matata', 'dog', 'https://www.happygodoodle.com/wp-content/uploads/2022/04/apricot-colored-miniature-goldendoodle.jpg', 6, 'Incredibly Fluffy', 'f'),
  ('Prickles', 'porcupine', 'http://kids.sandiegozoo.org/sites/default/files/2017-12/porcupine-incisors.jpg', 4, 'Pursuing Career as balloon artist!', 't'),
  ('Vince', 'cat', 'https://www.catster.com/wp-content/uploads/2017/08/A-fluffy-cat-looking-funny-surprised-or-concerned.jpg', 14, null, 't'),
  ('Figaro', 'cat', 'https://i.pinimg.com/originals/52/d7/91/52d7912ddef04789df089b709cdcabec.jpg', null, null, 't');