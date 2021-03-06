*chapter
[html]
<img src="data/bgimage/black.png" class="fadein">
[endhtml]
[wait time=1000]
[cm]
[clearfix]
[start_keyconfig]
[fadeoutbgm]
[mask time=500]
[position layer="message0" left=100 top=460 width=1180 height=260 frame="frame2.png" page=fore visible=true]
[position layer=message0 page=fore margint="70" marginl="190" marginr="150" marginb="50"]
[ptext name="chara_name_area" layer="message0" color="white" size=36 bold=true x=290 y=480 face="source"]
@layopt layer=message0 visible=true
[role]
[bg2 storage ="black.png" time=300]
[mask_off time=500]

*scene10
#
あれ以来、例の殺人事件の被害はぱったりと止んだ。[p]
*1
警察の調査によれば、被害者はみな犯罪歴があったり素行不良だったり、[r]あるいは殺害された日に誰かとトラブルを起こしていたりしていたらしい。[p]
*2
それで警察は当面、[r]私刑目的の殺人も視野に入れて捜査しているとのことだ。[p]
*3
これについて僕は何かを言うつもりはない。[r]犯人については妥当な評価だろう。[p]
*4
先輩の痕跡を残すものはすべて消えた。[r]初めから何もなかったかのように消えた。[p]
*5
あの後部室に戻ってみても先輩はいなかった。[r]先輩の席は空っぽだった。[p]
*6
そもそもの前提や認識さえ書き換えられていて、[r]先輩のことを覚えている者は誰もいなかった。[p]
*7
あの日あじさい園で撮った先輩の写真も、[r]僕のスマートフォンからは消えていた。[p]
[bg2 storage ="bg3.png" time=1000]
*8
先輩の面影を留めるのは、今や記憶というひどく曖昧なものだけだ。[p]
*9
本当に何もかも、先輩の痕跡を残すものは失われた。[p]
*10
そして僕の記憶さえも、少しずつ雨に洗い流されていくように、[r]淡く、薄く、おぼろになっていった。[p]
*11
忘れないよう先輩の名を紙に書き留めても、翌日には白紙に戻っている。[r]書き留めた記憶さえも失われる。[p]
*12
先輩の一番近くで過ごしていたのは僕なのだ。[r]僕につじつま合わせの影響が出ないなんてありえなかった。[p]
*13
それでも僕は抗おうとしていた。[p]
*14
だけれど僕はそのうち、何に抗っているのかわからなくなってしまった。[r]抗っていたことさえも忘れてしまった。[p]
[bg2 storage ="black.png" time=1000 wait=false]
*15
そして世界は元通りになった。[p]

*16
ただひとつの例外を除いて。[p]
[image layer="2" page="back" storage="smart.png" width=250 left=515 top=30]
[trans_in layer="2" time=500 method="fadeInUp"]
[wt]
*17
いつからか僕のスマートフォンには、覚えのない写真が入り込んでいた。[p]
*18
一見チープなイタズラに見えるが、[r]どうして自分がこんな画像を保存しているのかわからない。[r]それに相手の名前だって覚えがない。[p]
*19
だけれどその名前を見ていると、懐かしい気持ちになる。[r]声に出すと泣きそうにさえなる。なぜだろう？[p]
*20
きっとこの人は、僕にとって大切な人だったのだろう。[p]
*21
いや。[p]
*22
今でも、僕にとって誰よりも大切な人なのだろう。[p]
*23
きっと僕は少なからず、この人のおかげで生きているのだ。[p]
*24
そしてこの人のために生きているのだろう。[p]
[trans_out layer="2" time=500 method="fadeOutUp"]
[wt]
[mask time=1000]
[freeimage layer="2" time=0 page=back]
[rhide][mhide time=0]
[iscript]
sf.current_bgm_vol = sf._system_config_bgm_volume
[endscript]
[wait time=1000]
[mask_off time=500]
[if exp="sf._system_config_bgm_volume>=1"]
[movie storage="amehazuED_A.mp4" skip=skip volume="&sf.current_bgm_vol"]
[else]
[movie storage="amehazuED_A.mp4" skip=false volume=0]
[endif]
[mask time=500]
[eval exp="sf.SM2=1"]
[bg2 storage="busitucolor.jpg" time="0"]
[bucho storage="bucho/buchocn1.png" time=0]
[haruya storage=haruya/haruya_c1.png]
[M2][mshow time=0]
@clearfix
[role2]
[font color=0x000000]
[wait time=500]
[fadeinbgm storage=kaiwa_loop.ogg time=1500]
[mask_off time=1000]

*25
#部長
*26
「ということで。部誌への作品提出、よろしくね」[p]
*27
#春也
*28
「わかりました」[p]
*29
#
夏休みを眼前に控え、[r]僕と部長は今年度の部誌について打ち合わせをしていた。[p]
*30
#部長
「じゃ、そういうことで」[p]
[buchohide]
*31
#春也
「部長」[p]
*32
#
部室を去ろうとする部長の背中を、僕は思わず呼び止めた。[p]
[bucho storage="bucho/buchocn1.png"]
*33
#部長
「はい？」[p]
*34
#
なんだか改めてこんなことを言うのはこっぱずかしい気もしたけれど、[r]すでに引き留めてしまった以上、言わないわけにもいかなかった。[p]
*35
#春也
「……部長、今年で最後の部誌ですね」[p]
*36
#部長
「そうだね」[p]
*37
#春也
「なんか。寂しくなりますね」[p]
*38
#
[bc/2]部長が目をぱちくりさせた。[p]
*39
しばし僕たちは妙な空気の中で見合っていたけれど、[r]やがてふっと笑って部長は言った。[p]
*40
#部長
[bc/4]「寂しいなんて。私、ろくすっぽ顔出してなかったのに」[p]
*41
#春也
「まったく来なかったわけでもないじゃないですか」[p]
*42
「それに、一応はふたりで春からこの部を支えてきたんですから」[p]
*43
#部長
「そんな大層なものかな。この部にコストを賭けた覚えはないけど」[p]
*44
#春也
「それだけ気安い場所だったってことでは？」[p]
*45
#
[kanim name="bucho" keyframe="nod3" time="200" count=2]
ふふ、と部長は笑った。つられて僕も少し笑った。[p]
*46
部長は一瞬目を逸らし、言うか言うまいか迷うようなそぶりを見せたが、[r]結局仕方なさそうに笑って言った。[p]
*47
#部長
「しょうがないよ。卒業しなきゃいけないんだから」[p]
*48
「来年は君ひとりだね」[p]
*49
#春也
「誰も入部しなければ」[p]
*50
#部長
[bc/1]「……まあ、なんというか」[p]
*51
「期待はしてないけど、応援はしてもいい」[p]
*52
#春也
「期待してないんですか」[p]
*53
#部長
[bc/4]「癖なんだよ。人が習慣から脱することは容易ではない」[p]
#
[buchohide]
*54
部長は困ったように笑った。[r]そして部室のドアを開き、最後にこちらを振り向いた。[p]
[bucho storage=bucho/buchocn5.png]
*55
#部長
「でもまぁ……ありがとね。じゃ」[p]
#
[fadeoutbgm time=2000]
[buchohide]
*56
そう言い残して、部長は部屋を去っていった。[p]
[mask time=500]
[resetfont]
[M3]
@clearfix
[role]
[haruyahide time=0]
[bg2 storage="Alast.jpg" time="0"]
[eval exp="sf.ST6=1"]
[image layer="2" page="back" storage="smartc.png" width=250 left=515 top=30]
[wait time=1000]
[mask_off time=500]

*57
#
ひとりになった部室で、僕は窓を開いた。[r]七月の風と光が部室に入り込んでくる。[p]
*58
外の世界は陽の光を浴びて輝かしく、飛び込んでくる色は目に鮮やかだ。[p]
*59
この部室の窓から覗く景色は、時と季節の移ろいとともに、[r]少しずつ変化していくのだろう。[p]

*60
そのときだった。僕がふと思いついたのは。[p]

*61
そうだ。[p]

*62
部誌は窓について書こう。[r]窓がテーマの小説でもエッセイでも、とにかくなんでもいい。[p]

*63
窓について書くんだ。[p]
[fadeinbgm storage=A_end_loop.ogg time=1500]
[trans_in layer="2" time=500 method="fadeInUp"]
[wait time=500]

*64
記憶に残ってはいないけれど、心に残っていることがある。[p]
[trans_out layer="2" time=500 method="fadeOutUp"]
[wt]

*65
いつか誰かが、僕の開けたかった窓を開いてくれた。[p]

*66
どんな状況でどんな場面なのかは想像がつかない。[r]なんでもない日常の所作みたいにも思える。[p]
*67
けれどそんなことがあったというのは、不思議と胸に焼き付いている。[p]

*68
だから、つまり。[p]

*69
そんなことがあったというのを、僕はこの世界のどこかに残しておくべきだ。[r]そんな気がするのだ。[p]

*90
決して忘れてしまわないように。[p]

*91
窓から身を乗り出しながら、僕は思う。[p]

*92
こうしていることが好きだ。[r]窓から外の遠い景色を眺めている時間。[p]

*93
そして部室。[r]まさにいま自分がこうしている部室。[p]

*94
初めは窮屈にも感じたけれど、いまなら僕は胸を張って言える。[p]

*95
この部室が好きだ。[p]

*96
狭いけれど大きな窓がついていて、[r]僕の大切なものや時間がいっぱい詰まっている。[p]
*97
この部屋のことが、僕は好きだ。[p]
[mask time=1500]
[M0]
@clearfix
@layopt layer="message0" visible=false
[eval exp="sf.Aroot=1"]
[bg2 storage=black.png time=1000]
[wait time=2000]
[mask_off tme=1000]
@jump storage="title.ks" target=*start
