--liquibase formatted sql
--changeset me:test1 runOnChange:true endDelimiter:#
DROP PROCEDURE IF EXISTS sp_count_employees;
#
CREATE PROCEDURE sp_count_employees()
BEGIN
    SELECT COUNT(id) FROM employee;
END
#