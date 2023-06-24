-- Bonus Problem Statements (Swap Two Values)
create or replace function swap(inout x int,inout y int) 
language plpgsql	
as $$
begin

select x,y into y,x;
end; $$;
select * from swap(20,21);

-- Bonus Statement (Current Date Format)
CREATE OR REPLACE FUNCTION get_current_date()
  RETURNS TABLE(day text, month text, year text)
AS $$
BEGIN
  RETURN QUERY
    SELECT
      to_char(current_date, 'DD') AS day_number,
      to_char(current_date, 'MM') AS month,
      to_char(current_date, 'YYYY') AS month_year;
END;
$$ 
LANGUAGE plpgsql;

SELECT * FROM get_current_date();
