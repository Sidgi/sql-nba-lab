----------------------------------
-- [1] drop the players table if it exists

-- [2] Create your table schema here
CREATE TABLE players (
  id SERIAL PRIMARY KEY,
  name VARCHAR (128) NOT NULL,
  age SMALLINT NOT NULL,
  team CHAR(3) NOT NULL,
  games SMALLINT NOT NULL,
  points SMALLINT NOT NULL
);
