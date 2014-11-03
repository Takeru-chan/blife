#The shell script which displays MacBook's battery status.
MacBookのバッテリー状態を表示するシェルスクリプトです。  
[GistにおいてあるOne-liner](https://gist.github.com/7f1b2c6732fc753c32f4.git)の体裁を整えました。
整えた後もshebangを含む全てのコメントを外して連結すればちゃんとしたOne-linerです。  
##使い方
*MacBookシリーズ*のターミナルでblife.shと入力します。…が、aliasにblifeと設定するのがオススメ。  
メニューバーにある電池残量に加えて、充放電回数や電池の劣化情報（現在の満充電容量とSOH）を表示します。
##電池メモ
リチウムイオン二次電池は充放電回数に限界があります。MacBookの場合、モデルによって300回、500回、1000回と規定されています。[Appleの充放電回数のページ](http://support.apple.com/ja-jp/HT1519)に各モデルの最大充放電回数が載っています。これを超えると電池寿命ということになるんですね。  
なお充放電１サイクルの定義ですが、これまた[Appleのリチウムイオン電池のページ](http://www.apple.com/jp/batteries/why-lithium-ion/)にあるように、継ぎ足し充電は１回にはカウントされず、100%分の充電がなされた際に１回とカウントするようです。

これとは別に、リチウムイオン電池は充放電を繰り返すと満充電容量が減ってゆきます。こちらも電池の劣化度合いを示す指標で、初期の満充電容量に対し現在の満充電容量が何%かをあらわすSOH(State Of Health)が目安になります。
