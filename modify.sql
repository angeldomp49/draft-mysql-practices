USE zoologic;

ALTER TABLE weathers
ADD COLUMN description TEXT; -- add a column into the table--

ALTER TABLE weathers
MODIFY description MEDIUMTEXT;  --modify the exist column with this information--

ALTER TABLE weathers
CHANGE description description_weather TEXT; --modify and rename the exist column--

ALTER TABLE weathers
DROP COLUMN description_weather;             --delete the column--