DROP TABLE IF EXISTS test.test_00599;
DROP TABLE IF EXISTS test.test_view_00599;

CREATE TABLE test.test_00599(id UInt64) ENGINE = Log;
CREATE VIEW test.test_view_00599 AS SELECT * FROM test.test_00599 WHERE id = (SELECT 1);

DETACH TABLE test.test_view_00599;
ATTACH TABLE test.test_view_00599;

SHOW CREATE TABLE test.test_view_00599;

DROP TABLE IF EXISTS test.test_00599;
DROP TABLE IF EXISTS test.test_view_00599;
