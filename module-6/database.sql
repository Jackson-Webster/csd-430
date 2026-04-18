CREATE TABLE jacksonstatesdata (
    state_id INT PRIMARY KEY,
    state_name VARCHAR(50),
    capital VARCHAR(50),
    population INT,
    region VARCHAR(50),
    abbreviation VARCHAR(5)
);

INSERT INTO jacksonstatesdata VALUES (1, 'Colorado', 'Denver', 5800000, 'West', 'CO');
INSERT INTO jacksonstatesdata VALUES (2, 'Texas', 'Austin', 30000000, 'South', 'TX');
INSERT INTO jacksonstatesdata VALUES (3, 'California', 'Sacramento', 39500000, 'West', 'CA');
INSERT INTO jacksonstatesdata VALUES (4, 'Florida', 'Tallahassee', 22000000, 'South', 'FL');
INSERT INTO jacksonstatesdata VALUES (5, 'New York', 'Albany', 19500000, 'Northeast', 'NY');
INSERT INTO jacksonstatesdata VALUES (6, 'Illinois', 'Springfield', 12500000, 'Midwest', 'IL');
INSERT INTO jacksonstatesdata VALUES (7, 'Arizona', 'Phoenix', 7300000, 'West', 'AZ');
INSERT INTO jacksonstatesdata VALUES (8, 'Georgia', 'Atlanta', 11000000, 'South', 'GA');
INSERT INTO jacksonstatesdata VALUES (9, 'Ohio', 'Columbus', 11800000, 'Midwest', 'OH');
INSERT INTO jacksonstatesdata VALUES (10, 'Washington', 'Olympia', 7700000, 'West', 'WA');