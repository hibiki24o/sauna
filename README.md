# アプリケーション名
Sauna


# アプリケーション概要
お気に入りのサウナを投稿することによってサウナ好きな人たちが整いやすいお店を共有することができる


# URL
https://sauna-iq3q.onrender.com


# テスト用アカウント
・メールアドレス :aaa@aaa.com

・パスワード    :aaa123

# 利用方法
## サウナ投稿
1.トップページから新規登録ができる

2.サウナ投稿ボタンから（写真、店名、都道府県、場所、料金、客層、おすすめ度、レビュー）を投稿ができる

# アプリケーションを作成した背景
サウナ好きな友達とサウナに通っているときに、「サウナって当たり外れあるよね」という会話が開発に至った経緯となっています。

仕事が残業で夜遅くまであり深夜まで営業しているサウナをすぐに探したい。

料金も安くて整えるスペースがしっかりあるお店に行きたい。

出張先でサウナのあるコスパの良いホテルがあれば泊まりたい。

年齢層が高めのお店には行きたくない。

サウナユーザーの要望を考えた上でアプリを開発すれば解決できると思いました。




# 洗い出した要件
要件を定義したシート(https://docs.google.com/spreadsheets/d/12h1g3SaSDE_81k45Du4tPUm7QFNdOAOTEBuEgeoBBWE/edit#gid=1785908763)


# 実装した機能についてのGIF
https://gyazo.com/265f8ae2a2333ab5e38385e44f901cdb


# 実装予定の機能
サウナのキーワード検索機能を実装予定しています


# データベース設計
[![Image from Gyazo](https://i.gyazo.com/8b186c75a5f23202677e4bec6b76d313.png)](https://gyazo.com/8b186c75a5f23202677e4bec6b76d313)


# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/eec4aab7d60acad283f7b21b9088d80f.png)](https://gyazo.com/eec4aab7d60acad283f7b21b9088d80f)



# 開発環境
Ruby/Ruby on Rails/MySQL/Github/AWS/Visual Studio Code

・フロントエンド

・バックエンド

・テスト

・テキストエディタ

・タスク管理



# ローカルでの動作方法
以下のコマンドを順に実行。

% git clone https://github.com/hibiki24o/sauna

% cd sauna

% bundle install

% yarn install



# 工夫したポイント
フロント部分の構築をchatGPTのopenAIを活用し最先端の方法で実装を行いました。

都道府県、客層、おすすめ度はアクティブハッシュの実装をした。

現在はサウナが流行っているため開発後のマーケティングも行いやすいと思いました。

ユーザーの母数を増やした後にアプリに改良を加えてグルメアプリのような手法で広告ビジネスにつなげることができると思いました。



# usersテーブル

| Column             | Type   | Options                        |
| ------------------ | ------ | ------------------------------ |
| nickname           | string | null: false                    |
| encrypted_password | string | null: false                    |
| email              | string | null: false, unique: true      |
| age                | string | null: false                    |

### Association
* has_many :saunas


# saunasテーブル

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| title                 | string     | null: false                    |
| address               | string     | null: false                    |
| review                | text       | null: false                    |
| customer_id           | integer    | null: false                    | 
| prefecture_id         | integer    | null: false                    |
| star_id               | integer    | null: false                    |
| price                 | integer    | null: false                    |

### Association
* belongs_to :user
