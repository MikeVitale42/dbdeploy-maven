
-- Most databases don't apply DDL statements transactionally.
-- Therefore, to recover from failure more easily, only put a single DDL
-- statement in each change script.

create table test (id int, data text);

--//@UNDO

drop table test;

