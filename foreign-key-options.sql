
ALTER TABLE animals
DROP FOREIGN KEY fk_kind;
--delete the previous foreign key--


ALTER TABLE animals 
ADD CONSTRAINT fk_kind_set_null 
FOREIGN KEY (kind_id) 
REFERENCES kinds(id)
ON DELETE RESTRICT;
--default, it not let delete the row--

ALTER TABLE animals 
ADD CONSTRAINT fk_kind_set_null 
FOREIGN KEY (kind_id) 
REFERENCES kinds(id)
ON DELETE NO ACTION;
--the same for RESTRICT--

ALTER TABLE animals 
ADD CONSTRAINT fk_kind_set_null 
FOREIGN KEY (kind_id) 
REFERENCES kinds(id)
ON DELETE SET NULL;
--become the value to null--

ALTER TABLE animals 
ADD CONSTRAINT fk_kind_set_null 
FOREIGN KEY (kind_id) 
REFERENCES kinds(id)
ON DELETE CASCADE;
--delete the row and all rows in others tables with this reference--

ALTER TABLE animals 
ADD CONSTRAINT fk_kind_set_null 
FOREIGN KEY (kind_id) 
REFERENCES kinds(id)
ON DELETE SET NULL
ON UPDATE CASCADE;
--for update cascade update all rows with this reference: set null, no action and restrict have the same behavior--