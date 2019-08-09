select json_remove('{"a":1}', '$.a');
select json_remove('{"a":1, "b":2, "c":3}', '$.a', '$.b');
select json_remove('{"a":1, "b":2, "c":3, "d":4}', '$.b', '$.c', '$.d');

-- 指定したキーが存在しないときは無視して元のJSONを返す
select json_remove('{}', '$.a');
select json_remove('{"a":1}', '$.b');

-- 大本を指定するとすべて削除された空文字が返る
select json_remove('{"a":1}', '$');

