SELECT
XMLGET(s.value, 'Transaction_ID'):"$"::string as "Transaction_ID",
XMLGET(s.value, 'Customer_ID'):"$"::int as "Customer_ID",
XMLGET(s.value, 'Transaction_Date'):"$"::date as "Transaction_Date",
XMLGET(s.value, 'Transaction_Type'):"$"::string as "Transaction_Type",
XMLGET(s.value, 'Transaction_Amount'):"$"::decimal as "Transaction_Amount",
XMLGET(s.value, 'Transaction_Mode'):"$"::string as "Transaction_Mode"
FROM MYDB.AZURECASESTUDYXML.XML,
LATERAL FLATTEN(TO_ARRAY(MYDB.AZURECASESTUDYXML.XML._DATA:"$")) s