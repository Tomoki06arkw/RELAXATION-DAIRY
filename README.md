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

## 工夫したポイント
完全プラベートの仕様にしたのでセミトップページにログイン機能をあえてつけました。
またトップページにカレンダーを配置したことで日記を手軽に確認できる仕様です。

## 目指した課題解決	
今の時代はYoutube, SNSやアプリゲームなど本当に時間が足りないぐらい魅力的なアイテム揃っています。
そこでしっかり自分自身と向き合い振り返る時間を設けてほしいという思いから年齢問わずに利用できる日記ウェブケーションアプリを作りました。１日のストレスをリセットすることで自律神経の働きを正すことで安眠が得られ免疫もアップする。
セルフマネジメントとして利用して頂けると幸いです。

## 課題や今後実装したい機能
セミトップページにログイン機能を実装したことにより閲覧するのに少し手間がかかってしまいます。
解決するためにログイン画面にテスト用アカウントを記載しました。
メール自動返信機能を実装中です。
不安や怒りや悲しみというのは一時の感情によるもので
後々見返してみると大したことなかったり笑えるものになっていることが多いです。
そこで見返す事のできる機能をつけることで次に書くときに少し冷静に自分自身と向き合うことができる
そんなシステムを作りたいと思い実装しています。

## 洗い出した要件	
ウィザード式ログイン機能
・目的→どのページでどの情報を書いているかを確認しやすくするため。
日記投稿機能
・自身で書かれた日記を保存することが出来る
カレンダー機能
・日記を日付ごとに管理することが出来る。
音楽機能
・日記を書いている時にリラックスしながら音楽を聴くことができる。
単体テストコード
・モデルのバリーデーションをテスト。

# トップページとライティングページの詳細動画,画像
トップページ ![demo](https://gyazo.com/0b473ad54c03844774b049714b2e4ee5/raw)
https://gyazo.com/91e4844cddfbe0e2fe88b3fe2e0ddcd2

ログイン画面 ![2021-07-20 14 52のイメージ](https://user-images.githubusercontent.com/84255600/126270310-45b1f66e-ceb1-4290-9090-2c4f94c4bd8c.jpg)

ライティングページ ![2021-07-20 14 22のイメージ](https://user-images.githubusercontent.com/84255600/126266200-845971b8-d445-41ad-aebd-a39b9fe085f5.jpg)


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