# カードゲームの確率計算機

# plusコマンド
[![test](https://github.com/FullMetallPanic/robosys2025/actions/workflows/test.yml/badge.svg)](https://github.com/FullMetallPanic/robosys2025/actions/workflows/test.yml)

-カードゲームなどで特定のカードが手札に含まれる確率を計算するツールです。

## 実行例
-実行するとき、"デッキの総数\引きたいカード\ドローする枚数"という順番で数字を入力する。
```
$echo -e 40\e4\e5 | ./syodou 
0.4270707954918481
```

## 使用方法
-以下の手順で使用することができます。
-1 リポジトリをクローンする。
```
$ git clone https://github.com/FullMetallPanic/robosys2025.git
```
-2 ディレクトリに移動する。
```
$ cd robosys2025
```
-3 実行権限を付与する。
```
$chmod +x syodou
```
-4 その後実行例の様に好きな数字を入力する。
## 必要なソフトウェア
- Pyton
　- テスト済みバージョン:3.7 ~ 3.14

## テスト環境
- Ubuntu 22.04.5 LTS

## 謝辞
-web記事
　　-[遊戯王の確率の話：初動実測のすすめ](https://note.com/ttoyp/n/n8a6e4b0f1cb9)
- 利用・参照したコード
    - このパッケージのコードの一部は，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです。
    - [ryuichiueda/slides_marp/robosys2025](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025)

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます。

- © 2025 Matumoto Hayato
