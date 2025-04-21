SELECT
XMLGET(s.value, 'Id'):"$"::int as "ID",
XMLGET(s.value, 'Name'):"$"::string as "Name",
XMLGET(s.value, 'Email'):"$"::string as "Email",
XMLGET(s.value, 'Age'):"$"::int as "Age",
XMLGET(s.value, 'City'):"$"::string as "City"
FROM MYDB.XML_SCHEMA.XML,
LATERAL FLATTEN(TO_ARRAY(MYDB.XML_SCHEMA.XML._DATA:"$")) s