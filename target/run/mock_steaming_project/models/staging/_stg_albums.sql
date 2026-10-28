
  create or replace   view WORKSHOP_DB.PUBLIC._stg_albums
  
  
  
  
  as (
    SELECT *
FROM WORKSHOP_DB.RAW_DATA.albums
  );

