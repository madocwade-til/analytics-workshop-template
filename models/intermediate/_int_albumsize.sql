

WITH albums as (
    SELECT *
    FROM {{ref('_stg_albums')}}
),

tracks as (
    SELECT *
    FROM {{ref('_stg_tracks')}}
),

trackcount as (
    SELECT 
    album_id,
    COUNT(DISTINCT track_id) as track_count
    FROM tracks
    GROUP BY album_id
),

final as (
    SELECT 
    a.*,
    tc.track_count
    FROM albums a
    LEFT JOIN trackcount tc
    ON a.album_id = tc.album_id

)

SELECT *
FROM final
