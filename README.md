# README

# RELAXATION DAIRY
このアプリケーションは音楽を聞きながら一日を振り返ることができる日記ウェブアプリケーションです。
# Description
完全にプライベートな仕様になっているので日頃溜め込んだストレスや不満を好き放題書くことができます。ビューにもこだわりがあり、美しい背景のもとリラックスして一日を振り返ることができます。
また、筋トレ系YouTuberの方から許可を頂きマイページから遷移できる仕様にしてあります。

### URL	
https://relax-chat.herokuapp.com/

### テスト用アカウント	
ログイン
test@com / test11
ID= admin / Pass 2222

## 利用方法	
まずは新規登録し、トップページに移行します。そこにライティングページが遷移して下さい。
ライティングページには音楽を聞ける仕様になっていますので聴きたい方はクリックして頂き、
日記を書いて下さい。
保存先にカレンダーを用意しているので日付ごとに確認可能です。
日記を書き終わった方で運動したい方はマイページの方にHTTPトレーニングを紹介するページを用意しておりますので
興味のある方は是非遷移して下さい。

## 目指した課題解決	
今の時代はYoutube, SNSやアプリゲームなど本当に時間が足りないぐらい魅力的なアイテム揃っています。
そこでしっかり自分自身と向き合い振り返る時間を設けてほしいという思いから年齢問わずに利用できる日記ウェブケーションアプリを作りました。

## 洗い出した要件	
ウィザード式ログイン機能
・目的→どのページでどの情報を書いているかを確認しやすくするため。
日記投稿機能
・自身で書かれた日記を保存することが出来る
カレンダー機能
・日記を日付ごとに管理することが出来る。
音楽機能
・日記を書いている時にリラックスしながら音楽を聴くことができる。

# トップページとライティングページの詳細動画
トップページ→ https://gyazo.com/baf0253ef443b738dd3fdf3935725b36

ライティングページ→ https://gyazo.com/f1c03cd89d2f3dc2452b6dc433563075

データベース設計	

# テーブル設計

## users テーブル

| Column                | Type     | Options     |
| --------------------- | -------- | ----------- |
| email                 | string   | null: false |
| encrypted_ password   | string   | null: false |
| name                  | string   | null: false |
| age                   | string   | null: false |

### Association

- has_one  :private_person
- has_many :forms

##  private_person テーブル

| Column             | Type       | Options                        |
| ------------------ | ------     | ------------------------------ |
| nickname           | string     | null: false                    |
| address            | string     | null: false                    |
| profile            | text       | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association

- belongs_to :users

## forms テーブル

| Column             | Type       | Options                        |
| ------------------ | ------     | ------------------------------ |
| text               | string     | null: false                    |
| content            | text       | null: false                    |
| user               | references | null: false, foreign_key: true |


### Association

- belongs_to :users
- has_one_attached :image

## texts テーブル

| Column             | Type       | Options                        |
| ------------------ | ------     | ------------------------------ |
| user               | references | null: false, foreign_key: true |


### Association

- belongs_to :users