*start
[cm]
[clearfix]
[start_keyconfig]
[fadeoutbgm]

[bg storage="black.png" time="500"]

[button name="role_button" role=menu graphic="menu_off.png" enterimg="menu_on.png" x=1130 y=610]

;メッセージウィンドウ
[position layer="message0" left=100 top=460 width=1180 height=260 frame="frame2.png" page=fore visible=true]
[position layer=message0 page=fore margint="70" marginl="190" marginr="150" marginb="50"]


@layopt layer=message0 visible=true

[ptext name="chara_name_area" layer="message0" color="white" size=36 bold=true x=290 y=480 face="source"]
[chara_config ptext="chara_name_area" pos_mode=false memory=true effect=easeOutQuad]

;先輩
[chara_new  name="yukino" storage="yukino/tatie1.png" width=1000 jname="先輩" color=fff ]

;1無表情,2にこにこ,3悲しげ,4ごまかし,5苛立ち,6困惑
[macro name="yukino/1"][chara_mod name="yukino" storage="yukino/tatie1.png" cross="false" wait="false"][endmacro]
[macro name="yukino/2"][chara_mod name="yukino" storage="yukino/tatie2.png" cross="false" wait="false"][endmacro]
[macro name="yukino/3"][chara_mod name="yukino" storage="yukino/tatie3.png" cross="false" wait="false"][endmacro]
[macro name="yukino/4"][chara_mod name="yukino" storage="yukino/tatie4.png" cross="false" wait="false"][endmacro]
[macro name="yukino/5"][chara_mod name="yukino" storage="yukino/tatie5.png" cross="false" wait="false"][endmacro]
[macro name="yukino/6"][chara_mod name="yukino" storage="yukino/tatie6.png" cross="false" wait="false"][endmacro]
[macro name="yukino1"][chara_show name="yukino" storage="yukino/tatie1.png" top="30" left="150"][endmacro]
[macro name="yukino2"][chara_show name="yukino" storage="yukino/tatie2.png" top="30" left="150"][endmacro]
[macro name="yukino3"][chara_show name="yukino" storage="yukino/tatie3.png" top="30" left="150"][endmacro]
[macro name="yukino4"][chara_show name="yukino" storage="yukino/tatie4.png" top="30" left="150"][endmacro]
[macro name="yukino5"][chara_show name="yukino" storage="yukino/tatie5.png" top="30" left="150"][endmacro]
[macro name="yukino6"][chara_show name="yukino" storage="yukino/tatie6.png" top="30" left="150"][endmacro]

[macro name="yukinohide"][chara_hide name="yukino"][endmacro]

[macro name="M2"]
[position layer="message2" left=140 top=100 width=1000 height=620 frame="none" page=fore visible=true]
[position layer="message2" page=fore margint="25" marginl="25" marginr="25" marginb="25"]
[endmacro]

[macro name="M1"][position layer="message0" left=0 top=581 width=1280 height=180 frame="frame_still.png" page=fore visible=true]
[position layer="message0" page=fore margint="00" marginl="300" marginr="150" marginb="80"]
[loadcss file="./data/others/css/next2.css"]
[anim name="chara_name_area" top="+=150" left="-=120" time="0"][endmacro]

[macro name="M0"][position layer="message0" left=100 top=460 width=1180 height=260 frame="frame2.png" page=fore visible=true]
[position layer="message0" page=fore margint="70" marginl="190" marginr="150" marginb="50"]
[loadcss file="./data/others/css/next1.css"]
[anim name="chara_name_area" top="-=150" left="+=120" time="0"][endmacro]

*scene1
;◆雨音が聞こえ始める。→【雨音】が欲しい。SE？　BGM？

[bg2 storage ="black.png" time=500]

#
「相合傘って」[p]
[M1]
[bg2 storage="tonari.png" time=500 ]
#先輩
「濡れてるほうが惚れてるって言うね」[p]
#春也
「言いますね」[p]

#先輩
「ちょっと肩を見せてもらってもいいかな？」[p]
#春也
「今人として最悪なこと言ってるの気づいてます？」[p]

#
先輩はくすくす笑った。僕の隣、ひとつ傘の下。[p]
ひとつの傘にふたりは狭い。[r]気を付けていても幾度となく肩や腕が触れてしまう。[p]
非常に困ったことだ。[p]
「うお。春也……」[p]
……今僕をちらりと見て去ったのは、クラスメイトの男子だ。[r]自転車に雨合羽。梅雨時の制服みたいな出で立ちだった。[p]

#先輩
「知り合いかい？」[p]

#春也
「クラスの人ですよ。知り合いというか、本当に知っているだけというか」[p]

#先輩
「ふむ」[p]

#
去っていく合羽の背中を眺めながら、先輩は何やらにやにや笑い出した。[p]

#先輩
「ちょうどいいね」[p]

#春也
「何がですか」[p]

#先輩
「噂されてしまうなあ」[p]

#春也
「今何の話してます？」[p]


#先輩
「人の噂も七十五日と言うね」[p]

#春也
「言いますけど」[p]


#先輩
「うん。足りるね」[p]

#春也
「何にですか。二ヶ月後……八月。夏休み？[r]えっ夏休みに噂持ち込んで何する気ですか」[p]


#先輩
「何しようかなあ」[p]

#春也
「何もしないでくれません？」[p]


#
軽く笑って先輩は、善処するよ、とだけ答えた。[p]たぶん今の僕の目つきは梅雨の湿気に負けないぐらいじっとりしていると思う。[p]
先輩の真っ黒な長髪が、雨に濡れて艶を放っていた。[p]
烏の濡羽色なんて言うけれど、あれは要するに先輩の髪の色だ。[r]白い肌によく映える黒々とした瞳が、長いまつげの奥に覗いている。[p]
その視線が僕へと向けられた。[r]夜空みたいなその瞳に意識が吸い込まれる。[p]
けつまずいたように跳ね上がる心臓に、[r]僕の呼吸は喉元でひとつの塊になって息を塞いだ。[p]
反射的に顔を逸らす。すると先輩が僕の耳元に唇を寄せた。[p]

#先輩
「照れちゃって。顔が赤いよ」[p]

#春也
「囁かないでください。傘閉じますよ」[p]

#先輩
「私は構わないけどね。濡れて帰るつもりだったし」[p]

#
今日の先輩は傘を持ってきていなかった。[p]それどころか今日の帰り際、[r]学校の玄関から雨降る最中にすたすた歩いていって、[r]「行こうか」と振り向き僕に声をかけさえした。[p]
変人奇人。……それでも美人。それが先輩だった。[p]僕は相変わらずすごい人だなと半ば感心しつつ、[r]先輩の頭上へ傘をもたげたのだった。[p]
そして今に至る。[p]

#先輩
「雨に濡れて歩くって、私は結構好きなんだけどね」[p]

#春也
「そんなのどこがいいんですか？」[p]

#先輩
「泣いていてもバレないよ」[p]

#春也
「…………はい？」[p]

#先輩
「おや？　これは冗談の加減を間違えたかな？」[p]

#春也
「……今俺泣きたいぐらいうんざりしてます」[p]

#先輩
「傘持っててあげようか？」[p]

#春也
「いいです！」[p]

#
雨音の中を僕たちは歩いていく。[r]相合傘の歩みはいつも歩くよりだいぶ遅々としている。[p]
それだけ会話の時間も増えるわけで、[r]すると先輩が喋る適当な言葉も一段と量を増す。[p]
梅雨時の降水量並みだ。[p]

;◆ここまでスチルの表情差分でもアリかも。[p]
;◆雨降ってる町中の背景欲しい。家並みというか。[p]
やがて僕たちは曲がり角に差しかかる。[r]ここから先は僕はまっすぐ、先輩は道を折れていく。[p]
だからここが別れの場所だ。[p]

[M0]
[bg2 storage="town.jpg" time=500 cross=true wait=true]
[yukino2]
#先輩
「ありがとう、春也くん」[p]

#
傘の中で、僕たちは向かい合う。[p]

#先輩
「傘、入れてくれて。もう大丈夫だよ」[p]

#春也
「ひとりで歩いてくつもりですか？　この雨の中」[p]

#
先輩はうなずいた。その姿に色んな思いが湧き上がってくる。[p]
先輩は濡れて帰るつもりだ。[p]僕が途中まででも送っていったほうがいいんじゃないか？[r]いくら先輩でもびしょ濡れで歩いていては体調を崩しかねない。[p]
だけれど僕がそう申し出たところで、[r]むしろ先輩の迷惑にはならないだろうか？[p]そもそも先輩自身が大丈夫だと言っているのだ――[p]

#先輩
「じゃあね、春也くん。また明日」[p]

#春也
「あ……」[p]

#
声が詰まる。気付けば口が勝手に動いていた。[p]

#春也
「はい。また明日……」[p]
[chara_hide name="yukino"]
#
小さくなっていく先輩の背中を眺めながら、僕はため息をついた。[p]
まただ。[p]
言うか言うまいか迷った末にタイミングを逸して、[r]そのまま流されてしまう。[p]
こうなるといつも後味が悪い。[p]
これで先輩が風邪を引きでもしたら、[r]僕はいつまでも今日のことを引きずるに違いない。[p]

じっとりとした感触に我に返る。右肩に濡れて張り付くワイシャツの感触だった。[p]これ以上濡れないうちにと僕は家路に足を向け直す。[p]罪悪感が影のように尾を引いていた。[p]

雨音が遠くまで続いている。[r]ひとりになった傘の中は、広いけれどどこか空しい。[p]

[clearfix name="role_button"]
@layopt layer="message" visible=false
;◆メッセージボックス消えて、背景だけ。【雨音】。[p]
;◆クロスフェードでスチル。春也の背後に巨大な魚影が迫っているが、春也は気づいていない。[p]
;◆不穏なSE欲しい。不安を煽るというか。「おわかりいただけただろうか」的な。[p]
[mask time="500"]
[wait time="500"]
@layopt layer="message" visible=true
[bg2 storage="busitu.jpg" time="0"]
[button name="role_button" role=menu graphic="menu_off.png" enterimg="menu_on.png" x=1130 y=610]
[mask_off time="500"]

@jump storage="scene2.ks"