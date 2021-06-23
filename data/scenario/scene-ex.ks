*start

[cm]
[clearfix]
[start_keyconfig]
[fadeoutbgm]

[bg storage="black.png" time="500"]

[button name="role_button" role=menu graphic="menu2.png" x=1100 y=610]

;メッセージウィンドウ
[position layer="message0" left=100 top=460 width=1280 height=260 frame="frame2.png" page=fore visible=true]
[position layer=message0 page=fore margint="80" marginl="180" marginr="150" marginb="50"]
[loadcss file="./data/others/css/message.css"]


@layopt layer=message0 visible=true

[ptext name="chara_name_area" layer="message0" color="white" size=32 bold=true x=290 y=500 face="source"]
[chara_config ptext="chara_name_area" pos_mode=false memory=true effect=easeOutQuad]

;先輩
[chara_new  name="yukino" storage="yukino/tatie1.png" width=1000 jname="先輩" color=fff ]

;1無表情,2にこにこ,3悲しげ,4ごまかし,5苛立ち,6困惑
[macro name="yukino/1"][chara_mod name="yukino" storage="yukino/tatie1.png"][endmacro]
[macro name="yukino/2"][chara_mod name="yukino" storage="yukino/tatie2.png"][endmacro]
[macro name="yukino/3"][chara_mod name="yukino" storage="yukino/tatie3.png"][endmacro]
[macro name="yukino/4"][chara_mod name="yukino" storage="yukino/tatie4.png"][endmacro]
[macro name="yukino/5"][chara_mod name="yukino" storage="yukino/tatie5.png"][endmacro]
[macro name="yukino/6"][chara_mod name="yukino" storage="yukino/tatie6.png"][endmacro]

;春也
[chara_new  name="haruya" storage="haruya/body.png" width=1000 jname="春也" color=fff ]

[chara_layer name="haruya" part="body" id="1" storage="haruya/body.png" zindex=10]
[chara_layer name="haruya" part="hear" id="1" storage="haruya/hair.png" zindex=30]
[chara_layer name="haruya" part="face" id="1" storage="haruya/face1.png" zindex=20 ]
[chara_layer name="haruya" part="face" id="2" storage="haruya/face2.png" zindex=20 ]
[chara_layer name="haruya" part="face" id="2" storage="haruya/face3.png" zindex=20 ]
[chara_layer name="haruya" part="face" id="2" storage="haruya/face6.png" zindex=20 ]
[chara_layer name="haruya" part="face" id="2" storage="haruya/face7.png" zindex=20 ]

[macro name="haruya/1"][chara_mod name="haruya" storage="haruya/haruya1.png"][endmacro]
[macro name="haruya/2"][chara_mod name="haruya" storage="haruya/haruya2.png"][endmacro]
[macro name="haruya/3"][chara_mod name="haruya" storage="haruya/haruya3.png"][endmacro]
[macro name="haruya/6"][chara_mod name="haruya" storage="haruya/haruya6.png"][endmacro]
[macro name="haruya/7"][chara_mod name="haruya" storage="haruya/haruya7.png"][endmacro]



*scene1
#先輩
「君は文芸部室で漫画を読む種の人間なんだね」[p]
#春也
「漫画も読書ですよ」[p]
#
先輩は僕の隣にぴたりと椅子をくっつけ、僕の開いたコミック雑誌を横から覗き込んできていた。[p]なんかいい匂いがするので困る。[p]
#先輩
「どうして漫画の主人公って、身体に傷を負ってたりするんだろう」[p]
#
コマの中のキャラを見つめて、先輩が呟いた。[p]
#春也
「そういう印じゃないんですか。特別な力があるっていう」[p]
#先輩
「ふむ」[p]
#
先輩は漫画から視線を外し、足と腕とを組んで何やら考えはじめた。[p]たぶんろくでもないことなので僕は先輩をつついておく。[p]
#春也
「いま何企んでます？」[p]
#先輩
「私も君に印をつけたい」[p]
#春也
「なに言ってるんですか。マーキングですか」[p]
#先輩
「私は犬じゃないよ。でも犬はとても好きだ」[p]
#春也
「はあ……」[p]
#
脈絡のない会話の後、先輩はまた僕に頭を近づける。[p]先輩が漫画を覗き込む拍子に、さらさらとした髪が僕の手首にかかった。[p]
#先輩
「……めくらないのかい？」[p]
#
先輩が流し目気味にこちらを見る。[p]
#春也
「今ちょっと考え事してました」[p]
#先輩
「うん？　私についてかな？」[p]
#春也
「それもあります」[p]
#
ぴく、と先輩が目を開いた。予想外だったらしい。[p]
#先輩
「良ければ聞かせてくれないかな？」[p]
#
僕は少しだけ迷って、結局言うことにした。[p]
#春也
「傷、あるんですよ。僕の身体にも」[p]
#先輩
「へえ。それは……理由は聞いてもいいのかな？」[p]
#春也
「はい。でなければ話してないです」[p]
#
そうか、と先輩は頷いた。[p]
#春也
「俺、小さい頃に大きい手術してまして。その跡が背中にあります」[p]
#先輩
「……背中に？」[p]
#
「はい。まあ、言っといてなんですが見せるわけにはいきませんけど」[p]
#先輩
「それはね。色っぽくなってしまうから」[p]
#
先輩のそのコメントは果たして適切なのか？　訝しみながら僕は続ける。[p]
#春也
「手術の後、しばらく安静にしてなきゃいけない期間があって、そのときに本に触れてたんですよね。僕の本好きはそこからです」[p]
#先輩
「ということは、君がこの文芸部に入部する遠因でもあるわけだね」[p]
#春也
「そうとも言えます」[p]
#
そうだったんだ、と先輩は感慨深そうに呟いた。[p]
#春也
「このこと、誰にも言ってなかったんですけどね」[p]
#先輩
「へえ？　私が初めて？」[p]
#春也
「はい。少なくとも中学以来初めてです」[p]
#先輩
「それは……なんというか嬉しいけど。どうしてそんなことを話してくれたんだい？」[p]
#春也
「……なんででしょうかね？」[p]
#先輩
「おや。君にも考えるより先に言葉を発することはあるのか」[p]
#春也
「知ってもらいたくなったんですかね」[p]
#
僕は努めて他人事のように呟いた。[p]
でなければ今更に気恥ずかしい。[p]
#先輩
「ふふ……私が犬好きという情報のお返しかい？」[p]
#春也
「そうなりますかね。レートが釣り合ってませんけど」[p]
#先輩
「レートかあ。ふんふん。」[p]「それなら私も、君からの質問をなんでもひとつ受け付けよう。いかな問いにも赤裸々に答えるよ」[p]
#春也
「どんな犬が好きですか？」[p]
#
そこ犬なんだ、と先輩は目を細めた。[p]
#先輩
「私が好きなのはそうだね、本好きで案外素直じゃなくて、実は水で練って食べる知育菓子とか好きで、背中に手術痕のある犬かな」[p]
#春也
「僕は犬じゃないですよ」[p]
#先輩
「知ってるよ。君は私の後輩。それに誰とは言ってないよ。犬の話だからね」[p]
#春也
「……そうでしたね」[p]
#
僕は再び雑誌に目を落とす。漫画のキャラの傷跡に始まったこの話は、僕の背中の傷跡を経て、こうして犬の話に着地したのだった。[p]

;（暗転。）
;（溶明。スチル。春也を背中から抱きしめる先輩。）

#背
後から腕が回された。先輩だった。不意に後ろから抱きしめられて、僕の心臓はきゅっと張りつめる。[p]
#春也
「どっ……どうしたんですか？」[p]
#先輩
「君の背の傷を想っている」[p]
#
横目に見た先輩は瞳を閉じていた。きれいだと思った。……この人は美しい人なのだ。[p]
同じぐらいに変人だけど。[p]
#春也
「そんなに面白かったですか？　僕の話」[p]
#先輩
「ああ。君の話だから」[p]
#
先輩が僕にぴったりと寄り添う。[p]
#先輩
「君の背中が、君をこの文芸部室まで運んできてくれたんだね」[p]
#春也
「リリカル……ですね？」[p]
#先輩
「そんな気分なんだ」[p]
#
先輩が僕のそばから離れた。それから椅子の背もたれと、緊張でぴんと張った僕の背の間に手を差し挟み、制服の背中に指先を滑らせた。[p]
不思議なことに、先輩の指の軌跡は、僕の背中の手術痕を正確になぞっていた。[p]
再び先輩は僕の背中を抱く。さっきよりもひしと抱かれた。優しい力がこめられていた。[p]
#先輩
「たぶん私は、君の背の傷のことをこれから何度も想うのだろうね」[p]
#
僕の身体は指先までもガチガチに固まり、心臓はどくどくと音を打ち始めていた。かつてないほど僕と先輩は近くに寄り添っていた。[p]
そして僕という人間の根幹に関わる背中の傷に、先輩が想いを巡らせていることが、僕の中の何より深い底の部分を震わせていた。[p]
そんな僕をよそにして、先輩は瞳を閉じたまま、遠い記憶を思い出すかのように呟いた。[p]
#先輩
「もしも人に翼が生えたら、その羽根は背中に伸びているのだろうね――」[p]
#
先輩がどうして急にそんなことを言ったのか。僕にはわからない。[p]
でも僕は、自分の背の傷が、そんな羽みたいなものだとは、つゆほども考えたことがなかった。[p]
傷跡は傷跡だった。[p]
それを羽に結びつけたのは、先輩が初めてだった。[p]
ぱさりと雑誌が手から落ちた。自由になった両手が、先輩の腕に触れた。[p]
五月の末。曇りがちの鈍い日光が窓から差し込んでいる。[p]
梅雨が来る、と思った。先輩との梅雨が。[p]
