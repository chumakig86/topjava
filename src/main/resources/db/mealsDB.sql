DROP TABLE IF EXISTS meals;
DROP SEQUENCE IF EXISTS meal_seq;

CREATE SEQUENCE meal_seq START 100000;

CREATE TABLE meals
(
  id            INTEGER PRIMARY KEY DEFAULT nextval('meal_seq'),
  description   VARCHAR NOT NULL,
  date_time      TIMESTAMP DEFAULT now(),
  calories      INTEGER DEFAULT 200 NOT NULL,
  user_id        INTEGER NOT NULL
);