
  create or replace   view WORKSHOP_DB.PUBLIC._int_albumsize
  
  
  
  
  as (
    
WITH albums as (
    SELECT *
    FROM WORKSHOP_DB.PUBLIC._stg_albums
),

tracks as (
    SELECT *
    FROM WORKSHOP_DB.PUBLIC._stg_tracks
),

trackcount as (
    SELECT *
    FROM tracks
),

final as (
    SELECT 
    a.*,

)

SELECT *
FROM final
  );

