#!/bin/sh

echo `date '+%y/%m/%d %H:%M:%S'`
echo "一括SQLを実行します。"

# SQLを実行する
psql -U postgres -h localhost -d visual_novel -f ./sql/all.sql > ./result.log

echo `date '+%y/%m/%d %H:%M:%S'`
echo "一括SQLの実行が終了しました。"