#!/bin/bash

# GitHubのユーザー名を入力してください
read -p "GitHubのユーザー名を入力してください: " USERNAME

# リモートリポジトリを追加
git remote add origin https://github.com/$USERNAME/cleaning-mvp.git

# mainブランチにプッシュ
git push -u origin main

echo "プッシュが完了しました！"
echo ""
echo "次のステップ："
echo "1. https://github.com/$USERNAME/cleaning-mvp にアクセス"
echo "2. Settings タブをクリック"
echo "3. 左メニューの Pages をクリック"
echo "4. Source セクションで:"
echo "   - Deploy from a branch を選択"
echo "   - Branch: main を選択"
echo "   - Folder: / (root) を選択"
echo "   - Save をクリック"
echo ""
echo "数分後に以下のURLでアクセス可能になります："
echo "https://$USERNAME.github.io/cleaning-mvp/"