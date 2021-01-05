## プロジェクトタイトル
reservation-system
https://salon-reservation-system.herokuapp.com/users/sign_in
  
## アプリケーション概要
美容マッサージサロンを個人経営する方のお店で利用できるようRailsを使用し、予約システムを開発しました。<br>
実装した機能や使用技術などについて紹介致します。<br>
  
## 制作背景
個人経営する美容マッサージサロンで、予約管理を行えるようにするために制作しました。</br>
背景としては、以下のとおりです。</br>
知人の個人経営する美容マッサージサロンでは、ホットペッパーなどの宣伝媒体を利用せず直接営業や口コミにより営業しています。</br>
そのため、予約は個人でやりとりし、お店のカレンダーと自宅のカレンダーへ手書き管理されているということを知りました。</br>
したがいまして、二重管理で行われていることや、手書きによる書き忘れ・書き違いで起きる煩わしさをなくすため、本アプリケーションの制作を考えました。</br>
すでにホームページは、お持ちでしたので、ホームページへリンクを貼れるよう予約機能のみを制作し、ホームページのカラーや女性客が多いことから配色も考慮しています。

## 課題や今後実装したい機能
* 予約時に金額がわかるよう、商品が選択されたときに動的に金額が表示される機能を実装したい
* 商品を管理者画面から追加・編集・削除できるようにしたい
* 管理画面の予約テーブルでは商品名とお客様名を確認できるように実装したい

## 動作確認方法
Google Chromeの最新版にてご利用ください。<br>
ログインについては、下記のアカウントを用意しております。<br>
確認後、ログアウトをお願い致します。

### アカウント
* ユーザーアカウント
  - ログイン画面にて、ゲストユーザー（閲覧用）ボタンからログイン可能
  - 新規登録も可能（その際はログアウトをお願い致します）

* adminアカウント<br>
  ※URLの末尾の"/users/sign_in"を削除し、"/admin"と入力して下さい。<br>
  - ID: admin@example.com
  - PASSWORD: password

## 実装機能一覧
* 実装機能
  - ユーザー新規登録、ログイン、ログアウト機能
  - 新規予約機能
  - 予約の変更機能
  - 予約の一覧閲覧機能
  - 予約の削除機能
  - 管理者ページ（一覧閲覧）機能

* 実装において工夫した点
  - ユーザーが使いやすいようにシンプルなデザインにして、配色も３色ほどにしました
  - クリックしやすいように、ボタンのサイズは大きめにしました
  - バリデーションは入力フォームの下に表示されるようにしました
  - 誤って登録することがないよう、新規予約・予約変更・予約削除の際にポップアップ表示で確認できるようにしました
  - 管理者画面を設けることで管理者が予約スケジュールを確認しやすいようにしました
  - 予約後に、どんな内容で予約したのかを表示するようにしました

## 使用技術
Ruby/Ruby on Rails/Haml/Scss/MySQL/Github/Visual Studio Code

## Deployment / デプロイ
Heroku

## DB設計

### Admin_usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|

### usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|telephone|integer|null: false|

#### Association
- has_many :reservations

### reservations テーブル
|Column|Type|Options|
|------|----|-------|
|datetime|datetime|null: false|
|product_id|references|foreign_key: true|
|user_id|references|foreign_key: true|

#### Association
- belongs_to :product
- belongs_to :user

### productsテーブル
|Column|Type|Options|
|------|----|-------|
|product_name|string|null: false|
|price|integer|null: false|

#### Association
- has_one :reservation
