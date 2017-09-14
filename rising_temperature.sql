SELECT t1.Id FROM Weather t1 JOIN Weather t2 ON t1.Date = date_add(t2.Date, INTERVAL +1 DAY) AND t1.Temperature > t2.Temperature;
