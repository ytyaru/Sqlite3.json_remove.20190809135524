select json_remove('[1]', '$[0]');
select json_remove('[1,2]', '$[0]');
select json_remove('[1,2]', '$[1]');

-- 末尾インデックスが存在しないときは無視して元のJSONを返す
select json_remove('[]', '$[0]');
select json_remove('[1,2]', '$[2]');

-- 範囲外インデックスを指定したら無視して元のJSONを返す
select json_remove('[]', '$[1]');

-- インデックスに負数を設定するとパースエラー
select json_remove('[]', '$[-1]');

