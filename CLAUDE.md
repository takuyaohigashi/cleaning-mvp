# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## プロジェクト概要

ホテル清掃管理システム - 客室の清掃状況と予約状況を管理するシングルページアプリケーション（SPA）

## アーキテクチャ

### ファイル構成
- **index.html**: すべてのHTML、CSS、JavaScriptを含むメインファイル（約97KB）

### コア機能

1. **認証システム**
   - 管理者（admin）と清掃員（cleaner）の2つのロール
   - ロールによるUI表示の違い

2. **客室管理**
   - 客室ステータス: 未使用、CI前、滞在中、CO済
   - 清掃ステータス: 未清掃、清掃済、点検済、DD、清掃不要
   - フロア別表示（1-5階）

3. **可視化機能**
   - 清掃進捗グラフ
   - ステータス別集計
   - AI清掃ルート提案
   - 週間カレンダー表示

## 開発コマンド

### アプリケーションの起動
```bash
# ブラウザで直接開く（ローカル開発）
open index.html

# ローカルサーバーを使用する場合
python3 -m http.server 8000
# または
npx http-server
```

### デプロイ
このプロジェクトはすでにGitHub Pagesで公開されています。変更をデプロイするには：
```bash
git add .
git commit -m "変更内容の説明"
git push origin main
```
数分後に変更が反映されます。

## 主要なデータ構造と関数

### データ構造
- `rooms`: 客室情報の配列
- `currentDate`: 表示中の日付
- `activeFilter`: アクティブなフィルター
- `selectedFloors`: 選択中のフロア

### 主要関数
- `init()`: アプリケーション初期化
- `renderRooms()`: 客室グリッド表示
- `updateCounts()`: ステータス別カウント更新
- `filterByStatus(status)`: ステータスによるフィルタリング
- `openRoomDetail(roomId)`: 客室詳細モーダル表示
- `calculateAIRoute()`: AI清掃ルート計算
- `renderGraph()`: 清掃進捗グラフ描画

### ステータスの色分け
- 未清掃: ピンク/赤
- 清掃済: 緑
- 点検済: 青
- DD: オレンジ
- 清掃不要: グレー

## 注意事項

1. すべてのコードが単一のHTMLファイルに含まれている
2. バックエンドなし（データはJavaScript配列で管理）
3. 日本語UIのため、文字エンコーディングに注意
4. レスポンシブデザイン対応