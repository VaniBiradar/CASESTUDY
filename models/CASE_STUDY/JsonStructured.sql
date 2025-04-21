SELECT
_DATA:"AUTHOR_UID"::NUMBER as AUTHOR_UID,
_DATA:"FIRST_NAME"::STRING as FIRST_NAME,
_DATA:"MIDDLE_NAME"::STRING as MIDDLE_NAME,
_DATA:"LAST_NAME"::STRING as LAST_NAME,
_DATA:"CONTACT DETAILS"[0]:"Address":"Permanent address"::STRING as Permanent_Address,
_DATA:"CONTACT DETAILS"[0]:"Address":"current Address"::STRING as Current_Address,
_DATA:"CONTACT DETAILS"[0]:"phoneNumbers":"type"::STRING as Phone_Type,
_DATA:"CONTACT DETAILS"[0]:"phoneNumbers":"number"::STRING as Phone_Number
 FROM MYDB.AZURE_BLOB_STORAGE.JSON
 