#The shell script which displays MacBook's battery status.
MacBookのバッテリー状態を表示するシェルスクリプトです。  
[Gistに置いてあるOne-liner](https://gist.github.com/7f1b2c6732fc753c32f4.git)の体裁を整えました。
整えた後もshebangを含む全てのコメントを外して連結すればちゃんとしたOne-linerです。  
スクリプトの詳細は[awkでMacBookの電池情報を表示するスクリプト|簡単！プログラミング](http://www.ezcoding.jp/awk_batterystatus.html)に解説してあります。

I've improved [the one-liner on my Gist](https://gist.github.com/7f1b2c6732fc753c32f4.git).
If you remove comments and then catenate this script, you can make the one-liner again.
##Usage | 使い方
**MacBookシリーズ**のターミナルでblife.shと入力します。…が、aliasにblifeと設定するのがオススメ。  

**Effective only on the MacBook.**
You can execute this script on a terminal as './blife.sh'.
But I recommend you use alias as 'blife'.
```
Takeru-MBP:~ takeru$ alias blife
alias blife='~/tools/blife.sh'
Takeru-MBP:~ takeru$ blife
Your MacBook's Battery status is
Charge Remaining        5276(mAh)
State of Charge         95%
Cycle Count             81
Cycle Count Remaining   919
Full Charge Capacity    5520(mAh)
State of Health         80.0%
```
メニューバーにある電池残量に加えて、充放電回数や電池の劣化情報（現在の満充電容量とSOH）を表示します。

You will know much more status of battery than the system information.
##電池メモ
リチウムイオン二次電池は充放電回数に限界があります。MacBookの場合、モデルによって300回、500回、1000回と規定されています。[Appleの充放電回数のページ](http://support.apple.com/ja-jp/HT1519)に各モデルの最大充放電回数が載っています。これを超えると電池寿命ということになるんですね。  
なお充放電１サイクルの定義ですが、これまた[Appleのリチウムイオン電池のページ](http://www.apple.com/jp/batteries/why-lithium-ion/)にあるように、継ぎ足し充電は１回にはカウントされず、100%分の充電がなされた際に１回とカウントするようです。

これとは別に、リチウムイオン電池は充放電を繰り返すと満充電容量が減ってゆきます。こちらも電池の劣化度合いを示す指標で、初期の満充電容量に対し現在の満充電容量が何%かをあらわすSOH(State Of Health)が目安になります。
##License
This script has released under the MIT license.  
[http://opensource.org/licenses/MIT](http://opensource.org/licenses/MIT)
##One more thing...
[Automatorを使ってMacアプリにしてみました。](http://www.ezcoding.jp/apps/blife.dmg)
リンク先からdmgファイルをダウンロードできます。

実行結果をどうやって表示したらいいのかよくわからなかったので、Macの音声読み上げ機能のKarenさんが喋ります。
アイコンは[pixabayからPublic Domainのもの](http://pixabay.com/en/battery-energy-electricity-power-98396/)を使わせていただきました。
