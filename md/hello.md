# md2html

## usage

授業資料作成支援スクリプト。自分専用。

ローカルに

    markdown/\*.md
    public/

のフォルダがある前提で、
markdown フォルダ中の md ファイルを引数に md2html を呼び出すと、
html に変換して public フォルダにセーブ、
そのファイルを bootstrap で脚色する。

* pandoc で書き出したファイルに dummy でマークを入れておき、
* それを sed で cdn のリンクに書き換え、
* ついでに `<div class="container"> ~ </div>` で囲む。
* table を `<div class="table-responsive"> ~ </div>` で囲み、
  table-striped table-hover の属性を与える。
* mobile-first、
  `<meta name='viewport'...>` を `<head>` の下に差し込む。

## UPDATE

* [2017-04-29] mobile first
* [2017-04-30] 複数の md ファイル
* [2017-08-17] markdown, public をデフォルト値として与えよう。
  コマンドラインのオプションでデフォルト以外を取れるように。


---
hkimura, 2017-04-23.