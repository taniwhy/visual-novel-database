\c test_db

SET ROLE visual_noveler;

DROP TABLE IF EXISTS visual_novel.bland_list CASCADE;
DROP TABLE IF EXISTS visual_novel.bland_list_id_seq CASCADE;
CREATE TABLE visual_novel.bland_list
(
    id                  SERIAL,
    created_at          TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at          TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    bland_name          TEXT        NOT NULL,
    bland_furigana      TEXT        NOT NULL,
    bland_url           TEXT,
    twitter_id          TEXT,

    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS visual_novel.game_list CASCADE;
DROP TABLE IF EXISTS visual_novel.game_list_id_seq CASCADE;
CREATE TABLE visual_novel.game_list
(
    id                  SERIAL,
    created_at          TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at          TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    game_name           TEXT        NOT NULL,
    game_furigana       TEXT        NOT NULL,
    bland_name          INTEGER     NOT NULL,
    launch_day          DATE        NOT NULL,
    price               INTEGER     NOT NULL,
    platform            TEXT        NOT NULL,
    is_adult_only       BOOLEAN     NOT NULL,
    lasted_ver          TEXT        NOT NULL,
    lasted_patch_day    TIMESTAMP,
    site_url            TEXT,
    twitter_id          TEXT,
    PRIMARY KEY(id),
    FOREIGN KEY(bland_name) REFERENCES visual_novel.bland_list(id) 
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

DROP TABLE IF EXISTS visual_novel.creater_list CASCADE;
DROP TABLE IF EXISTS visual_novel.creater_list_id_seq CASCADE;
CREATE TABLE  visual_novel.creater_list
(
    id                  SERIAL,
    created_at          TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at          TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    creater_name        TEXT        NOT NULL,
    creaters_furigana   TEXT        NOT NULL,
    gender              BOOLEAN,
    twitter_id          TEXT,
    PRIMARY KEY(id) 
);

DROP TABLE IF EXISTS visual_novel.work_infomations CASCADE;
DROP TABLE IF EXISTS visual_novel.work_infomations_id_seq CASCADE;
CREATE TABLE visual_novel.work_infomations
(
    id                  SERIAL,
    created_at          TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at          TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    game                INTEGER     NOT NULL,
    creater             INTEGER     NOT NULL,
    job                 INTEGER     NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(game) REFERENCES visual_novel.game_list(id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    FOREIGN KEY(creater) REFERENCES visual_novel.creater_list(id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

