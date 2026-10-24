select w1.id from weather as w1  -- w1 today's record--
join weather as w2  -- w2 yesterday's record--
on datediff(w1.recordDate, w2.recordDate) = 1   -- w1 is exactly 1 day after w2--
where w1.temperature > w2.temperature;

-- self join + datediff + where (temp comparison)--
