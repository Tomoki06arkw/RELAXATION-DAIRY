# RELAXATION DAIRY
このアプリケーションは音楽を聞きながら一日を振り返ることができる日記ウェブアプリケーションです。
## 一日の自分と向き合う日記ウェブアプリケーション
完全にプライベートな仕様になっているので日頃溜め込んだストレスや不満を好き放題書くことができます。ビューにもこだわりがあり、美しい背景のもとリラックスして一日を振り返ることができます。
  また、日記を書いた後は運動してほしいという思いから自宅でもできる運動を紹介しています。
  筋トレ系YouTuberの方から許可を頂きマイページからその方のページに遷移できる仕様にしてあります。

### URL	
https://relax-chat.herokuapp.com/

### テスト用アカウント	
ログイン
test@com / test11  ID= admin / Pass 2222

## 利用方法	
まずは新規登録し、トップページに移行します。そこからライティングページが遷移して下さい。
  ライティングページには音楽を聞ける仕様になっていますので聴きたい方はクリックし日記を書いて下さい。
保存先にカレンダーを用意しているので日付ごとに確認可能です。
日記を書き終わった方で運動したい方はマイページの方にHTTPトレーニングを紹介するページを用意しておりますので
興味のある方は是非遷移して下さい。

## 目指した課題解決	
今の時代はYoutube, SNSやアプリゲームなど本当に時間が足りないぐらい魅力的なアイテム揃っています。
そこでしっかり自分自身と向き合い振り返る時間を設けてほしいという思いから年齢問わずに利用できる日記ウェブケーションアプリを作りました。１日のストレスをリセットすることで自律神経の働きを正すことで安眠が得られ免疫もアップする。
セルフマネジメントとして利用して頂けると幸いです。

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
トップページ→ ![2021-07-20 13 02のイメージ](https://user-images.githubusercontent.com/84255600/126260189-f5e64a45-6029-498f-8f20-0563bbde922d.gif)

ライティングページ→ https://gyazo.com/8d1d8cb844afbecf04bd4ed711268f39

詳細ページでのYouTubeを紹介→ https://gyazo.com/1d8bc551bb28ed0d5475c2db8807913b

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