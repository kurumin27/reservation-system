## プロジェクトタイトル
reservation-system<br>

## アプリケーション概要
美容マッサージサロンを個人経営する方のお店で利用できるようRailsを使用し、予約システムを開発しました。<br>
実装した機能や使用技術などについて紹介致します。<br>
  
## 制作背景
個人経営する美容マッサージサロンで、予約管理を行えるようにするために制作しました。<br>
背景としては、以下のとおりです。<br>
知人の個人経営する美容マッサージサロンでは、ホットペッパーなどの宣伝媒体を利用せず直接営業や紹介などにより集客しています。<br>
そのため、予約は個人でやりとりし、お店のカレンダーと自宅のカレンダーへ手書き管理されているということを知りました。<br>
二重管理で行われていることや、手書きによる書き忘れ・書き違いなどのミスや煩わしさをなくすため、本アプリケーションの制作を考えました。<br>
すでにホームページは、お持ちでしたので、ホームページへリンクを貼れるよう予約機能のみを制作し、ホームページのカラーや女性客が多いことから配色も考慮しています。

## 動作確認方法
Google Chromeの最新版にてご利用ください。<br>
ログインについては、下記のアカウントを用意しております。<br>

### アカウント
※ログアウトを必ずお願い致します
* ユーザーアカウント
  - ログイン画面にて、ゲストユーザー（閲覧用）ボタンからログイン可能
  - 新規登録も可能

* adminアカウント<br>
  ※下記URLよりアクセスして下さい。<br>
  https://salon-reservation-system.herokuapp.com/admin/login
  - ID: admin@example.com
  - PASSWORD: password

## 実装機能一覧
* 実装機能
  - ユーザー新規登録、ログイン、ログアウト機能
  - 新規予約機能
  - 予約の変更機能
  - 予約の一覧閲覧機能
  - 予約の削除機能
  - 管理者ページ（各テーブル情報の閲覧）機能
  - ゲストログイン機能
  
* 実装において工夫した点
  - ユーザーが使いやすいようにシンプルなデザインにして、配色も３色ほどにしました
  - クリックしやすいように、ボタンのサイズは大きめにしました
  - バリデーションは入力フォームの下に表示されるようにしました
  - 誤って登録することがないよう、新規予約・予約変更・予約削除の際にポップアップ表示で確認できるようにしました
  - 管理者画面を設けることで管理者が予約スケジュールを確認しやすいようにしました
  - 予約後に、どんな内容で予約したのかを表示するようにしました　（＊１の画面画像を参照下さい）
  - ログインをしていないとシステムを利用できないように設定しました
  - ブラウザの画面サイズを縮小してもビュー崩れがないよう調整しました

  ＜最初にアクセスした際のページ＞
  ![image](https://user-images.githubusercontent.com/35267387/103754237-7295f200-504f-11eb-85aa-e730ed7f7777.png)
  
  ＜予約一覧のページ＞
  ![image](https://user-images.githubusercontent.com/35267387/103755024-81c96f80-5050-11eb-89a2-a044d16ab08e.png)
    
  ＜新規予約のページ＞
  ![image](https://user-images.githubusercontent.com/35267387/103754859-462ea580-5050-11eb-9f8c-8c3f151c1dc5.png)
      
  ＊１＜予約直後のページ＞
  ![image](https://user-images.githubusercontent.com/35267387/103754945-63fc0a80-5050-11eb-81b1-356871c9e5a4.png)
      
  ＜予約の詳細のページ（ここから予約の変更と取消が行えます）＞
  ![image](https://user-images.githubusercontent.com/35267387/103755165-bb9a7600-5050-11eb-85ac-3ced56441137.png)
  
## 課題や今後実装したい機能
* 予約時に金額がわかるよう、商品が選択されたときに動的に金額が表示される機能
* 商品を管理者画面から追加・編集・削除できるような機能
* 管理画面の予約テーブルでは商品名とお客様名を確認できるような機能
* スマートフォンやタブレットにも対応したビュー
* AWSでのデプロイ

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
