CREATE TRIGGER set_timestamp
BEFORE UPDATE ON bland_list
FOR EACH ROW
EXECUTE PROCEDURE trigger_set_timestamp();