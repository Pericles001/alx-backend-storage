-- SQL script that lists all bands with Glam rock as their main style, ranked by their longevity

SELECT band_name, IF(split is NULL , 2020 - formed, (split - formed))  lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%'
ORDER BY lifespan DESC;
