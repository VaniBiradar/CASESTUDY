select * from (select
    T."Transaction_ID" ,
    T."Transaction_Date" ,
    T."Transaction_Type" ,
    T."Transaction_Amount",
    T."Transaction_Mode",
    T."Customer_ID",
    B."ACCOUNTNUMBER",
    B."BRANCH",
   dense_rank() over (order by T."Transaction_Amount"  desc ) as  rnk  
from
MYDB.DBT.TRANSACTION_XML  as T
INNER JOIN
MYDB.DBT.BANKING_DATA_JSON as B
ON T."Customer_ID" = B."CUSTOMER_ID")  where  rnk <=5