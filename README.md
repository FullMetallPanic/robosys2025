# カードゲームの確率計算機

[![test](https://github.com/FullMetallPanic/robosys2025/actions/workflows/test.yml/badge.svg)](https://github.com/FullMetallPanic/robosys2025/actions/workflows/test.yml)

カードゲームなどで 特定のカードが手札に含まれる確率 を計算するツールです。

---

## 実行例
実行するとき、  
「デッキの総数 → 引きたいカードの枚数 → ドローする枚数」  
の順番で数字を入力します。

```
$ echo -e "40\n4\n5" | ./syodou 
0.4270707954918481
```

## 使用方法
- 以下の手順で使用することができます。
```

$ git clone https://github.com/FullMetallPanic/robosys2025.git

$ cd robosys2025

$ chmod +x syodou

$ echo -e "40\n4\n5" | ./syodou

```
## 必要なソフトウェア
- Python
    
    - テスト済みバージョン:3.7 ~ 3.14

## テスト環境
- Ubuntu 22.04.5 LTS

## 謝辞

- web記事　　
   
    - [遊戯王の確率の話：初動実測のすすめ](https://note.com/ttoyp/n/n8a6e4b0f1cb9)

    - [【python初心者】特定のカードを手札に引く確率を計算するプログラム【MTG】](https://note.com/witty_minnow598/n/n0c4039a14cda)

- 利用・参照したコード
    - このパッケージのコードの一部は，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです。
        
        - [ryuichiueda/slides_marp/robosys2025](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025)

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます。

- © 2025 Matumoto Hayato
