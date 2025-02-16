# YUL Network

YULは、Bitcoin SVのソースコード（v1.1.0）をベースにした新しいブロックチェーンネットワークです。

## 特徴
- BSVメインネットと同じ基本パラメータ
- カスタマイズされたAlert System
- 独自のNetwork Access Rules
- 3ノード構成での分散ネットワーク

## 開発環境
- Ubuntu 20.04
- AWS EC2インスタンス（t2.medium）
- BSV v1.1.0ソースコード

## ブランチ戦略
- main: プロダクションブランチ
- develop: 開発ブランチ
- feature/*: 機能開発ブランチ

## ビルド手順
```bash
./autogen.sh
./configure
make
sudo make install
```

## ノード展開手順
1. AWS EC2インスタンスの準備
2. 依存関係のインストール
3. ソースコードのビルド
4. ノード設定
5. ジェネシスブロックの生成
6. ノード間接続の確立

## ライセンス
MIT License
