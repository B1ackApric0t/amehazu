*chapter
[html]
<img src="data/bgimage/black.png" class="fadein">
[endhtml]
[wait time=1000]
[cm]
[clearfix]
[start_keyconfig]
[stopbgm]
[eval exp="sf.Bclear=0"]
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
自从学姐离开以后，一直在全国闹得沸沸扬扬的凶杀案也戛然而止，[r]没再出现新的受害者了。[p]
*1
根据警察的调查所得，这件案子的受害人全都是那种不是本来就有案底的不良分子，[r]就是受害当天曾经和人发起过冲突的恶棍。[p]
*2
因此警察目前会按以执行私刑为目的的杀人为方针进行搜查。[p]
*3
对此我不打算发表任何评论。对犯人的描述应该算是贴切吧。[p]
*4
残留着学姐曾经存在过的痕迹的事物全都消失了，[r]好像一开始就从没有存在过一般消失得干干净净。[p]
*5
在那以后就算回到活动室也没能看到学姐的身影。学姐的位置上空空如也。[p]
*6
而且连最基本的前提或认知都被改写了，学校里没有任何人记得学姐。[p]
*7
就连那天我在绣球花园拍下的学姐的照片，也从我的手机上悄然消失了。[p]
[bg2 storage ="bg3.png" time=1000]
*8
现在还残存着学姐的音容笑貌的地方，就只有名为记忆这种非常含糊暧昧的载体。[p]
*9
学姐留下的一切痕迹全都消失了，消失得一干二净。[p]
*10
就连我的记忆也像受到雨水的冲刷一般，正一点一点地流失变淡，越发朦胧了起来。[p]
*11
我在纸上写下学姐的名字以防自己忘记，但到了第二天写下的一切都会回归白纸。[r]甚至连自己曾经写下来的记忆也会消失。[p]
*12
曾经和学姐最为亲近，一起度过最多时光的人是我，[r]为了让学姐的不存在变得合理，我没可能不会受到影响。[p]
*13
尽管如此，我还是试图抵抗。[p]
*14
但随着时间的推移，我渐渐想不起来自己在抵抗什么。[r]我甚至忘了自己曾经的抵抗和挣扎。[p]
[bg2 storage ="black.png" time=1000 wait=false]
*15
然后世界恢复了它应有的样子。[p]

*16
除了唯一的一个例外。[p]
[image layer="2" page="back" storage="smart.png" width=250 left=515 top=30]
[trans_in layer="2" time=500 method="fadeInUp"]
[wt]
*17
我的手机上不知道什么时候发来了一张陌生的照片。[p]
*18
乍一看以为只是一种寻常的无聊恶作剧，但我依然把照片保存了下来。[r]我不明白自己会这样做的理由是什么，我甚至连发件人的名字也不认识。[p]
*19
但一看到那个名字，我会觉得熟悉又怀念。[r]一念出这个名字，我的喉咙会泛起一阵哽咽。到底为什么？[p]
*20
这个人，肯定曾经对我来说很重要。[p]
*21
不对。[p]
*22
那肯定是直到现在这一刻也依然是我心中最重要的人。[p]
*23
我能继续坚强地生活在这个世界里，一定都是多亏了这个人。[p]
*24
而我想必也是为了那个人，才会继续活下去的吧。[p]
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
[if exp="sf._system_config_bgm_volume>=1&&sf.SM2!=1"]
[movie storage="amehazuED_A.webm" skip=false volume="&sf.current_bgm_vol"]
[elsif exp="sf._system_config_bgm_volume>=1&&sf.SM2==1"]
[movie storage="amehazuED_A.webm" skip=true volume="&sf.current_bgm_vol"]
[else]
[movie storage="amehazuED_A.webm" skip=true volume=0]
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
#部长
*26
「我要说的就这么多。那就麻烦你提交学部文集要用的作品咯」[p]
*27
#春也
*28
「明白了」[p]
*29
#
暑假已近在眼前，我和部长在活动室内商量本年度的学部文集的各种细节。[p]
*30
#部长
「那今天就这样」[p]
[buchohide]
*31
#春也
「部长」[p]
*32
#
看着部长转身打算离开活动室的背影，我不由地喊住了她。[p]
[bucho storage="bucho/buchocn1.png"]
*33
#部长
「怎么样」[p]
*34
#
虽然特意去跟她说这种话好像有点难为情，但既然我已经出声挽留，[r]就没有理由不把话说完。[p]
*35
#春也
「……部长，今年这本是部长参与的最后的文集了吧」[p]
*36
#部长
「是啊」[p]
*37
#春也
「总感觉有点寂寞呢」[p]
*38
#
[bc/2]部长吃惊得直眨眼。[p]
*39
我们在这股奇妙的氛围下对视了一会儿以后，部长突然笑了笑说道。[p]
*40
#部长
[bc/4]「说什么寂寞不寂寞的，我本来就没怎么来活动室啊」[p]
*41
#春也
「但也不是完全不来对吧」[p]
*42
「而且不管怎么说，从春天开始文学部就一直靠我们两个相互扶持过来」[p]
*43
#部长
「有那么夸张嘛。我不记得自己为了这个学部投注过任何心思就是了」[p]
*44
#春也
「那就说明这里是一个能让你安心到这种程度的地方？」[p]
*45
#
[kanim name="bucho" keyframe="nod3" time="200" count=2]
呼呼，部长笑了笑。有见及此，我也轻轻笑了笑。[p]
*46
部长别开视线，露出一副欲言又止的模样，但马上又看着我笑着说道。[p]
*47
#部长
「没办法啊。我也总有一天要毕业」[p]
*48
「明年就只剩你一个人了呢」[p]
*49
#春也
「如果没有新人入部的话」[p]
*50
#部长
[bc/1]「……哎，怎么说呢」[p]
*51
「虽然没有任何期待，但也姑且说一声加油」[p]
*52
#春也
「原来你一点也不期待的吗？」[p]
*53
#部长
[bc/4]「就是习惯啦。人啊，要想从自己的惯性思维中跳脱出来可不容易」[p]
#
[buchohide]
*54
部长露出一个略带为难的笑，然后拉开活动室的门，离开前转头看向我。[p]
[bucho storage=bucho/buchocn5.png]
*55
#部长
「但，怎么说……谢谢你。走啦」[p]
#
[fadeoutbgm time=2000]
[buchohide]
*56
说完，部长就走出了活动室。[p]
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
活动室内只剩下我一个人。我打开窗户，七月的风和光也随之钻入室内。[p]
*58
外面的世界正沐浴在灿烂的阳光中闪闪发亮，跳入眼中的色彩是那么的鲜艳而亮丽。[p]
*59
从活动室的窗户看到的景色也会随着时间和季节的变化而逐渐发生变化吧。[p]

*60
就在这个时候，我突然想到。[p]

*61
对了。[p]

*62
文集作品就写一篇关于窗户的文章吧。只要是以窗户为主题，[r]不管是小说散文或者其他什么文体都行。[p]

*63
写一写关于窗户的文字吧。[p]
[fadeinbgm storage=A_end_loop.ogg time=1500]
[trans_in layer="2" time=500 method="fadeInUp"]
[wait time=500]

*64
有些事物虽然没能停留在回忆里，但曾经带来的感觉依然留在心中。[p]
[trans_out layer="2" time=500 method="fadeOutUp"]
[wt]

*65
曾经有一个人，她为我打开了一扇我一直想要打开的窗户。[p]

*66
我无法想象那是在一个什么样的情况，什么样的场景下做出来的事。[r]甚至那可能只是跟一个平平无奇的日常行为差不多的动作。[p]
*67
但曾经发生过这种事情，这个念头却神奇地深深烙印在我的心里。[p]

*68
所以，也就是说。[p]

*69
我有义务把“曾经发生过这样的事情”这一件事保存在这个世界的某个地方。[r]我有这感觉。[p]

*90
为了能够一直铭记在心。[p]

*91
我带着这样的想法从窗户向外探出身。[p]

*92
从窗外眺望远处的景色，这是我最喜欢的一段时间。[p]

*93
还有这个活动室。能让我看到外面景色的活动室。[p]

*94
一开始虽然觉得这里狭小而拘束，但现在我可以挺起胸膛说出这句话。[p]

*95
我喜欢这里。[p]

*96
房间虽小却有一扇大大的窗户，里面装满了我最重要的东西和度过的时间。[p]
*97
这个房间的存在，最让我喜爱。[p]
[mask time=1500]
[M0]
@clearfix
@layopt layer="message0" visible=false
[eval exp="sf.Aroot=1"]
[bg2 storage=black.png time=1000]
[wait time=2000]
[mask_off time=1000]
@jump storage="scenario_ch/title.ks" target=*start
