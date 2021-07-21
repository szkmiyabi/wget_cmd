#!/bin/sh

# wget site download script
# -x ドメイン名のディレクトリ作成
# -i ダウンロードURLを示したファイルを指定
# -l 数字 リンクをたどる階層を数値で指定、指定なしの場合5階層
# -r 再帰的にダウンロードする
# -p CSS,Javascriptも含めてダウンロードする
# -k 絶対パスを相対パスに変換する
# -w 数字 ダウンロードの間隔を秒数指定
# -random-wait -wで指定したダウンロード間隔を0.5～1.5の間のランダムにする

while read line
do

  wget -x -i $line -p -k -l 1 -w 1 --random-wait --no-check-certificate --tries=1

done < $1