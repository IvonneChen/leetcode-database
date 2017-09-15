SELECT 
t.Request_at AS Day, 
ROUND(SUM(IF(u.Banned = 'No' AND t.Status IN ('cancelled_by_client', 'cancelled_by_driver'), 1, 0)) / SUM(IF(u.Banned = 'No', 1, 0)), 2) AS 'Cancellation Rate' 
FROM Trips t 
JOIN Users u ON t.Request_at >= '2013-10-01' AND t.Request_at <= '2013-10-03' AND t.Client_Id = u.Users_Id 
GROUP BY t.Request_at;
