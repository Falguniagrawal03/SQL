select 
    case 
        when id % 2 = 1 and id = (select count(*) from Seat) then id 
    #--last student with an odd id:if id is odd and it is the last seat, keep the same id
        when id % 2 = 1 then id + 1
    #--other odd ids:change the id to id+1
        else id - 1
    #--even ids:change the id to id-1
    end as id, student
from Seat 
order by id;
