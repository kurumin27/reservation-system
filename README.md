## Project Title / プロジェクトのタイトル
サロン予約システム

### 動作確認方法
Google Chromeの最新版にてご利用ください。
ログインについては、下記のアカウントを用意しております。
確認後、ログアウトをお願い致します。

##### アカウント
* ゲストユーザーアカウント
  - ログイン画面にて、ゲストユーザー（閲覧用）ボタンからログイン可能
  - 新規登録も可能（その際はログアウトをお願い致します）

* adminアカウント
  ID: admin@example.com
  PASSWORD: password

### アプリケーション概要
美容マッサージサロンを経営する方のお店で利用できるようrailsを使用し、予約システムを開発しました。
実装した機能や使用技術などについて紹介致します。

### 実装機能一覧
* 実装機能
  - ユーザー新規登録、ログイン、ログアウト機能
  - 新規予約機能
  - 予約の変更機能
  - 予約の一覧閲覧機能
  - 予約の削除機能
  - 管理者ページ（一覧閲覧）機能

* 実装において工夫した点
  1. ユーザーが使いやすいようにシンプルなデザインにして、配色も３色ほどにしました。
  2. クリックしやすいように、ボタンのサイズは大きめにしました。
  3. バリデーションは入力フォームの下に表示されるようにしました。
  4. 誤って登録することがないよう、新規予約・予約変更・予約削除の際にポップアップ表示で確認できるようにしました。
  5. 管理者画面を設けることで管理者が予約スケジュールを確認しやすいようにしました。
  6. 予約後に、どんな内容で予約したのかを表示するようにしました。

### 使用技術
Ruby/Ruby on Rails/Haml/Scss/MySQL/Github/Visual Studio Code

### Deployment / デプロイ
Heroku

### DB設計

## Admin_usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|telephone|integer|null: false|

### Association
- has_many :reservations

## reservations テーブル
|Column|Type|Options|
|------|----|-------|
|datetime|datetime|null: false|
|product_id|references|foreign_key: true|
|user_id|references|foreign_key: true|

### Association
- belongs_to :product
- belongs_to :user

## productsテーブル
|Column|Type|Options|
|------|----|-------|
|product_name|string|null: false|
|price|integer|null: false|

### Association
- has_one :reservation
