\c test_db

DROP ROLE IF EXISTS visual_noveler;

CREATE ROLE visual_noveler WITH LOGIN PASSWORD 'leafkey';

ALTER DATABASE test_db OWNER TO visual_noveler;

