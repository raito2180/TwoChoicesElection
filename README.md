# Stardom<br>
■サービス概要<br>
年度別・シーズン別ににサッカーチームや選手の経歴を調べる事が出来ます。<br>
選手のスーパープレイ動画も見る事が出来ます。<br>
<br>
■ このサービスへの思い・作りたい理由<br>
自分は元々サッカーが大好きでロナウジーニョやトッティの全盛期によくサッカーを見ていました。しかし、最近ではサッカーを見る機<br>
会も減ったため情報についていけていません。またサッカーに触れたいけど1試合が長いためまとめてみる事が中々出来ない。短い時間で<br>
サッカーの情報を把握出来るようにする為、今回このアプリを作りたいです。ヨーロッパが最高峰の世界なのでまずはヨーロッパリーグ<br>
のみで作成予定です。<br>
<br>
■ ユーザー層について<br>
最近はサッカーを見れていないけど、情報は知りたいもしくは今活躍している選手を知りたいと感じる方<br>
<br>
■サービスの利用イメージ<br>
ヨーロッパサッカーチームを対象に年度別・シーズン別(夏・冬の年2回)毎にチーム経歴・活躍した選手<br>
の概要を知る事が出来ます。<br>
活躍した選手のスーパープレイ動画を見る事が出来ます<br>
<br>
■ ユーザーの獲得について<br>
XをメインとしたSNSを用いての広報活動予定です。<br>
<br>
■ サービスの差別化ポイント・推しポイント<br>
スポーツナビ
https://sports.yahoo.co.jp/<br>
・年度・シーズン別の経歴概要機能…詳細な戦績は載っていますが、年度別でこのチーム・選手はこういう経歴を残した。などの概要があ<br>
りません。データではなくニュアンスで把握できれば良いという方にとっては差別化できる点だと思われます<br>
・活躍している選手のスーパープレイ動画を見る事が出来る点…経歴の概要に沿ってスーパープレイ動画を見る事が出来ます。視覚的に選<br>
手の特徴がわかるため、情報がわからない状態でも好きな選手を見つける事が出来て、サッカー愛が再燃するきっかけにもなります。
<br>
■ 機能候補<br>
##### MVP リリース時<br>
1.レスポンシブ対応…tailwind.cssおよびdaisyUI使用していく予定<br>
2.ログイン機能(googleログイン)<br>
3.チーム・選手経歴概要検索機能(年度別・シーズン別(夏・冬の年2回))<br>
4.選手のスーパープレイ動画検索機能<br>
5.シェア機能(X)<br>
6.プロフィール機能(好きなチーム・アイコン・ニックネーム)<br>
##### 本リリース時<br>
7.ヨーロッパリーグ以外の地域に対応(南米などの強い地域から拡張予定)<br>
8.試合マッチング機能①…動画を見て体を動かしたくなった人たちの為にフットサル募集機能(6人)<br>
9.試合マッチング機能②…①で集まった人たちでグループチャットが出来ます。スケジュール調整や雑談にどうぞ<br>
■ 機能の実装方針予定<br>
##### MVP リリース時<br>
1.レスポンシブ対応…tailwind.cssおよびdaisyUI使用していく予定<br>
2.ログイン機能(googleログイン)…Google APIにて実装<br>
3.チーム・選手経歴概要検索機能(年度別・シーズン別(夏・冬の年2回))…openaiAPIにより概要抽出(画像添付)<br>
4.選手のスーパープレイ動画検索機能…youtube apiにて埋め込む形で使用予定。<br>
5.シェア機能(X)…https://publish.twitter.com/にて実装予定<br>
6.プロフィール機能…使用する言語の標準機能で作成可能と思っている<br>
##### 本リリース時<br>
7.ヨーロッパリーグ以外の地域に対応(南米などの強い地域から拡張予定)…3と同じ<br>
8.試合マッチング機能①…中間テーブルで上限６人まで募集に参加できる機能を実装予定<br>
9.試合マッチング機能②…①で集まった人たちでグループチャットが出来ます。スケジュール調整や雑談用<br>
■ 使用予定の技術スタック<br>
**フロントエンド:Next.js**<br>
チャット機能や動画視聴機能を実装予定の為SPAでストレスフリーなUI/UXを実装したいため<br>
**バックエンド:RailsAPI**<br>
supabaseを活用するとクライアントでDBの取得を行わなければならないためDB操作がしやすいRailsを再選定。<br>
**認証:OAuth2.0**<br>
googleログイン機能を実装予定<br>
**DB:supabase postgresql**<br>
supabaseにpostgresqlが搭載されているためそちらを使用予定。<br>
**PaaS:Vercel&heroku**<br>
Next.jsを調べた際に、ISRを使用する場合はVercelを使用しないと設定が難しいという記事を見たのと、マージ後に自動デプロイ<br>
機能もありGithubActionsを活用しなくてもよいなどデプロイ時の使用感がとても良かった為使用予定です。herokuは、一度Rende<br>
r.comを使用した際にエラーなしでデプロイできない事象が発生した為多少お金がかかっても安定しているherokuで実装したいと思<br>
っています。<br>
**CSSフレームワーク:tailwind.css**<br>
クラス命名が不要かつユーティリティファーストで使いやすいため。レスポンシブ時に便利なコンポーネントも用意<br>
**CSSライブラリ:daisyUI**<br>
コンポーネントがtailwind.cssと併用できるかつ、ユーティリティファーストな書き方が出来る為使いやすい。<br>
**仮想コンテナ技術:Docker**<br>
一度構築してしまえば同じ環境をチーム全体で使いまわせるというとても便利な技術の為使用予定<br>
**webAPI:YouTube Data API + openaiAPI**<br>
アプリへのyoutubeの埋め込みとAIによる紹介機能の実装に使用します<br>
