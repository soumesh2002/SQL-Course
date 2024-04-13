
SELECT a.destination, a.time, b.part_of_day
from dataset_1 a INNER JOIN table_to_join b ON a.time = b.time;

SELECT destination, passanger
FROM dataset_1
WHERE passanger = 'Alone';