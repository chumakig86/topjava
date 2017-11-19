DELETE FROM meals;

ALTER SEQUENCE meal_seq RESTART WITH 100000;

INSERT INTO meals (description, calories, user_id)
VALUES ('Банановый смузи', 150, 100000);
INSERT INTO meals (description, calories, user_id)
VALUES ('Шашлык', 400, 100001);
INSERT INTO meals (description, calories, user_id)
VALUES ('Яичница из 10 яиц', 400, 100000);
INSERT INTO meals (description, calories, user_id)
VALUES ('Солянка', 200, 100001);