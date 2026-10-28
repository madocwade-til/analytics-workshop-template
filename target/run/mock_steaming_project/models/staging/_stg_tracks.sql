
  create or replace   view WORKSHOP_DB.PUBLIC._stg_tracks
  
  
  
  
  as (
    SELECT *
FROM WORKSHOP_DB.RAW_DATA.tracks
  );

