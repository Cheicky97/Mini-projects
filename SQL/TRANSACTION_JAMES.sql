DELIMITER $$
CREATE DEFINER=`root`@`%` PROCEDURE `TRANSACTION_JAMES`()
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
    	ROLLBACK;
        RESIGNAL;
    END;
    
    START TRANSACTION;
    
    UPDATE BankAccounts
    SET Balance = Balance - (SELECT 4*Price FROM ShoeShop WHERE Product="Trainers")
    WHERE AccountName = "James";
    
    UPDATE BankAccounts
    SET Balance = Balance + (SELECT 4*Price FROM ShoeShop WHERE Product="Trainers")
    WHERE AccountName = "Shoe Shop";
    
    UPDATE ShoeShop
    SET Stock = Stock - 4
    WHERE Product="Trainers";
    
    COMMIT; 
END$$
DELIMITER ;