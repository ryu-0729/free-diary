# 概要

日々の日常を日記としての投稿やメモとしても使えるアプリケーションです
test@gmail.com パスワードがbaseballでテストユーザーとしてログインできます。

# 機能一覧

投稿一覧機能
投稿の検索機能
投稿一覧にソート機能
新規投稿機能
投稿に含まれるurlを外部リンクにする機能
画像アップロード機能、クラウドストレージサービスにはAmazon S3を使用
投稿の編集、削除機能
お気に入り機能
お気に入り一覧機能
ページネーション機能
ユーザーの新規登録、ログイン、ログアウト機能
ユーザーの編集機能

# 機能実装のため使用したgem一覧

gem 'devise'
gem 'bootstrap', '~> 4.4.1'
gem 'jquery-rails'
gem 'rinku'
gem 'ransack'
gem 'kaminari'
gem 'rails-i18n', '~> 5.1'
gem 'aws-sdk-s3', require: false
gem 'mini_magick', '~> 4.8'

