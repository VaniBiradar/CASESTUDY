SELECT
T."Transaction_ID",
T."Customer_ID",
T."Transaction_Amount",
T."Transaction_Date",
T."Transaction_Type",
T."Transaction_Mode",
B."ACCOUNTNUMBER",
B."BRANCH",
B."FIRST_NAME",
B."LAST_NAME",
B."PHONE_BALANCE" AS BALANCE
FROM
MYDB.DBT.TRANSACTION_XML as T
JOIN
MYDB.DBT.BANKING_DATA_JSON as B
ON
T."Customer_ID"=B."CUSTOMER_ID"