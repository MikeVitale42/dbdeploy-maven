-- dbdeploy will wrap the application of each change script
-- in a transaction
--
-- DML statements (INSERT, UPDATE etc) can be applied transactionally,
-- so therefore dbdeploy will ensure that either the whole of this script applies
-- or none of it does.
--
insert into test values (6, 'This is simple text');
insert into test values (7, 'Some UTF-8 chars: åßéá');

--//@UNDO

delete from test where id in (6,7);

