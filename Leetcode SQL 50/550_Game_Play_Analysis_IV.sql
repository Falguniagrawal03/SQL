select round(count(*) / (select count(distinct player_id) from Activity),2)as fraction from Activity a
where(a.player_id, a.event_date) in
(
    select player_id, date_add(min(event_date), interval 1 day)
    from Activity
    group by player_id
);
