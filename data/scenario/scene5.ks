*chapter
[html]
<img src="data/bgimage/black.png" class="fadein">
[endhtml]
[wait time=1500]
[cm]
[clearfix]
[start_keyconfig]
[fadeoutbgm]
[position layer="message0" left=100 top=460 width=1180 height=260 frame="frame2.png" page=fore visible=true]
[position layer=message0 page=fore margint="70" marginl="190" marginr="150" marginb="50"]
[ptext name="chara_name_area" layer="message0" color="white" size=36 bold=true x=290 y=480 face="source"]
@layopt layer=message0 visible=true
[button name="role_button" role=menu graphic="menu_off.png" enterimg="menu_on.png" x=1130 y=610]

*start
[mask time="700"]
[wait time=500]
[bg2 storage="busitu.jpg" time="0"]
[mask_off time="700"]
#
翌日。放課後。[p]
ひとり部室で待ってみたものの、先輩がやってくる気配はない。[p]
狭い部屋の中に息苦しいほどの静寂が詰まっていて、[r]外に降る雨の音が異様なほど大きく聞こえる。[p]
部室の窓からは灰色の空が覗いていた。[p]
先輩が部活に来ないなんて初めての事態だった。[p]
いや、この文芸部は非常にのんびりした部活で、[r]もはや部活動より放課後の溜まり場と言ったほうが正しいのだが、[r]それだけに先輩のことが気になってしまう。[p]
……学校には来ているのだろうか？[p]
先輩のことが不安になるものの、どう動けば良いか分からない。[p]
体は大丈夫ですかなんて聞くにしても、[r]本人が何もなかったような体で振る舞うので、[r]僕はそれ以上身動きできない。[p]
もどかしさが募って苛立ちに変わってくる。[p]
頭に浮かぶのは先輩のことばかりだ。[r]それから、あの不意に目に入った影のことも。[p]
地面から飛び出して、[r]おそらく先輩の手首から先を食いちぎって消えたあの影だ。[p]
あれはなんだったんだろう？　[r]どうして先輩は、あれの存在を無理にでも隠し通そうとするのだろう？　[r]しらばっくれるのだろう？[p]
僕の頭はそのまま記憶をたどって、全国連続殺人事件を引っ張り出す。[r]今日のニュースで、再び犠牲者は数を一人増やしていた。[p]自然、僕の頭の中で二つの事件が結びつく。[p]
全国で人を襲っているのは、殺人犯などではなく、あの影なんじゃないか？[p]
それなら犯人の足取りがつかめないことや、[r]全国に犯行が分布している理由も説明できる。[p]
説明できるのだが。[p]
そんなことあり得るのだろうか？　[r]そもそもあの影は何だったのだろう？[r]本当にあの場にいたのだろうか？[p]
あの影が僕の見間違いで、先輩の言っていたことも本当で、[r]本当にただあのタイミングで転んでしまっただけというのは？[p]
……わからない。どんな想像も推測も空を掴むようだ。[p]
ただひとつわかっているのは、僕たちがいまなんだか危険で怪しくて[r]不可解な状況にあるということだけだ。[p]
このまま考えていてもしょうがないので、僕は部室を発つことにする。[r]いま何時頃かとポケットからスマホを出したが、先輩からの連絡はなかった。[p]
[bg2 storage="entrance.jpg" time=800 cross=true wait=true method=fadeInRight]
玄関口を出る。地面に一歩踏み出すとき、[r]まるでガラス張りの床を歩いているみたいにひやひやした。[p]

;（帰路）
[clearfix name="role_button"]
@layopt layer="message" visible=false
[bg2 storage="town.jpg" time=1000 cross=true wait=true]
@layopt layer="message" visible=true
[button name="role_button" role=menu graphic="menu_off.png" enterimg="menu_on.png" x=1130 y=610]

曇天のもとを歩んでいると、何かが僕の首筋を這い上がった。[r]その感覚に思わず声をあげそうになるが、すんでのところでこらえた。[r]虫か何かだろうか？[p]
うなじを手で払おうとするがその感覚は抜けない。[r]首筋がどこか濡れている。[p]
すると今度はそのぞわぞわしたものが耳元にまで上ってきた。[p]
#？？
「今宵、雨が降る」[p]
#
ぞわりとした。[r]まるで地底から響いてくるような声が、僕の鼓膜を震わせた。[p]

#？？
「亥の刻。汝が住まいの戸口にて待たれたし」[p]

#
耳元で何かがぱちんと弾けた。[r]おそるおそる手をやってみると、指先が濡れている。[p]
いまのは何だったんだ？[p]
僕は急に恐ろしくてたまらなくなる。知ってはいけないもの、[r]聞いてはならないものに触れられてしまった気がする。[p]どうして立て続けにこんな目に遭うのだろう？　訳が分からない。[p]
ただ、ひとつだけ言えることは、何か超常的なものが今この町に出没していて、[r]それは僕と関わりを持とうとしているらしいということだった。[p]
僕は何かに巻き込まれたらしかった。[r]そして昨日先輩が襲われたことも、その何かの一部に違いなかった。[p]
呼びつけられた不穏さを胸に抱えながら、[r]僕は重い足取りで帰路を歩むのだった。[p]
@jump storage="scene6.ks" target=*start