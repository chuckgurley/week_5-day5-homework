CREATE OR REPLACE FUNCTION addCustomer
    (
        _first_name varchar(50),
        _last_name varchar(50)
    )
RETURNS VOID
LANGUAGE plpgsql 
AS
$$
BEGIN
    INSERT INTO customer (
        first_name,
        last_name
    ) VALUES (
        _first_name,
        _last_name
    );
END;
$$
