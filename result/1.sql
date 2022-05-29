select S.sID, S.sName, S.GPA, A.cName, A.major, C.enrollment , A.decision
from Student S, College C, Apply A
where A.sID = S.sID and A.cName = C.cName;