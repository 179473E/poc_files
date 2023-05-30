

-- Description: sql to load DIM_TIME table from IBMS
--
-- Modifications
-- Date         Modifier           Comment
-- ------------ ------------------ ----------------------------------------------------
-- 2023-05-25   Adenzon             Initial version
-- 2023-05-30   Adenzon             Adding new condition
--************************************************************************************
create or replace view RPOD_DATA_MART.STUDENT_BIO_INFO(
	STUDENT_ID,
	ADDRESS,
	PHONE,
	EMAIL
) as 
(
  SELECT 
	STUDENT_ID,
	ADDRESS,
	PHONE,
	EMAIL
    FROM  PROD_W.STUDNETS T WHERE RCRD_CURRENT_FLAG='Y'
  );