SELECT *
FROM {{ source('streaming_data', 'albums')}}