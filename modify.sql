USE zoologic;

ALTER TABLE weathers
ADD COLUMN description TEXT;

ALTER TABLE weathers
MODIFY description MEDIUMTEXT;

ALTER TABLE weathers
CHANGE description description_weather TEXT;

ALTER TABLE weathers
DROP COLUMN description_weather;