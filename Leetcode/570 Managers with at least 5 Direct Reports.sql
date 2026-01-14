Select 
    name
From Employee
Where id IN
    (
        Select managerId From Employee Group By managerId Having Count(id) >= 5    
    ); 
