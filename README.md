# 概要

日々の日常を日記としての投稿やメモとしても使えるアプリケーションです<br>
test@gmail.com パスワードがbaseballでテストユーザーとしてログインできます。

# 機能一覧

投稿一覧機能<br>
投稿の検索機能<br>
投稿一覧にソート機能<br>
新規投稿機能<br>
投稿に含まれるurlを外部リンクにする機能<br>
画像アップロード機能、クラウドストレージサービスにはAmazon S3を使用<br>
投稿の編集、削除機能<br>
お気に入り機能<br>
お気に入り一覧機能<br>
ページネーション機能<br>
ユーザーの新規登録、ログイン、ログアウト機能<br>
ユーザーの編集機能<br>

# 機能実装のため使用したgem一覧

gem 'devise'<br>
gem 'bootstrap', '~> 4.4.1'<br>
gem 'jquery-rails'<br>
gem 'rinku'<br>
gem 'ransack'<br>
gem 'kaminari'<br>
gem 'rails-i18n', '~> 5.1'<br>
gem 'aws-sdk-s3', require: false<br>
gem 'mini_magick', '~> 4.8'<br>

