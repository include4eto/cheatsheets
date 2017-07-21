# truncate without constraint checks
SET FOREIGN_KEY_CHECKS = 0; 
TRUNCATE table1; 
SET FOREIGN_KEY_CHECKS = 1;
