DELIMITER &&
CREATE
    FUNCTION nivel_de_conta (saldo DECIMAL(10,2))
    RETURNS VARCHAR(60)
    DETERMINISTIC
    BEGIN
        IF saldo > 35000 THEN
            RETURN 'PLATINUM';
        ELSEIF saldo > 10000 THEN
            RETURN 'GOLD';
        ELSE
            RETURN 'SILVER';
        END IF;
    END &&
DELIMITER ;

select nivel_de_conta(10000)
from account;