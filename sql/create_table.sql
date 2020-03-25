DROP TABLE IF EXISTS blandlist CASCADE;
DROP TABLE IF EXISTS blandlist_id_seq CASCADE;

CREATE TABLE blandlists
(
    id SERIAL,
    bland_name VARCHAR(255) NOT NULL,
    bland_furigana VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS gamelist;
DROP TABLE IF EXISTS gamelist_id_seq;

CREATE TABLE gamelist
(
    id SERIAL,
    game_name TEXT NOT NULL,
    game_furigana TEXT NOT NULL,
    bland_name INTEGER NOT NULL,
    launch_day DATE NOT NULL,
    
    platform TEXT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(bland_name) REFERENCES blandlist(id) 
        ON DELETE SET NULL
        ON UPDATE CASCADE
);