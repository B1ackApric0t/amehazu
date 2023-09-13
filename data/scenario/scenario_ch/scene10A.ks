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
那个雨夜之后，成天闹得沸沸扬扬的凶杀案也戛然而止，再也没有出现新的受害者。[p]
*1
据警方调查，那些凶杀案的受害者要么本身就有案底，要么就是品行不端之人，或是在受害当天跟人起过冲突的恶棍。[p]
*2
因此，警方目前的侦查中也会考虑犯人是否存在动用私刑的动机。[p]
*3
我并不打算对此发表任何意见。警方对犯人的猜测应该算是贴切吧。[p]
*4
学姐留下的痕迹全都消失了，仿佛她从一开始就没有存在过。[p]
*5
在那之后，我曾抱着一丝期待回到活动室，却没有看到学姐的身影。她的座位上空空如也。[p]
*6
所有人的认知都被改写了，没有谁还记得学姐这个人。[p]
*7
就连那天我在绣球花园拍的学姐的照片，也从手机上悄然消失了。[p]
[bg2 storage ="bg3.png" time=1000]
*8
如今，学姐的身影只存在于“记忆”这个极其含糊暧昧的载体。[p]
*9
其他的任何地方，都再也找不见学姐留下的痕迹。[p]
*10
甚至连我的记忆也仿佛被雨水不断冲刷着，一点一点地变淡、流失，越发朦胧了起来。[p]
*11
为了提醒自己，我在纸上写下了学姐的名字。但第二天就只剩一张白纸了。就连一笔一划写下来的记忆也会消失。[p]
*12
我曾是学姐最为亲近的人。既然学姐的一切都在消失，我必然会受到影响。[p]
*13
即便如此，我仍在试图反抗。[p]
*14
但渐渐地，我便忘记了自己到底在反抗什么。甚至不记得自己曾经反抗过。[p]
[bg2 storage ="black.png" time=1000 wait=false]
*15
这个世界终于恢复了它原本的样子。[p]

*16
除了唯一的一个例外。[p]
[image layer="2" page="back" storage="smart_zh.png" width=250 left=515 top=30]
[trans_in layer="2" time=500 method="fadeInUp"]
[wt]
*17
我发现的手机上存着一张不知什么时候收到的陌生的照片。[p]
*18
乍一看只是低劣的恶作剧，可我依然把照片保存了下来。我不明白自己为何会这样做，甚至对照片上的名字也没什么印象。[p]
*19
但一看到那个名字，我会觉得熟悉又怀念。一念出这个名字，我的喉咙会泛起一阵哽咽。这到底是为什么？[p]
*20
这个人，一定是曾经对我很重要的人。[p]
*21
不对。[p]
*22
直到现在，这个人也依然是我心中最重要的人。[p]
*23
我能继续坚强地活在这个世界上，一定都是多亏了这个人。[p]
*24
而且，我一定是为了那个人，才会继续活下去的吧。[p]
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
「我要说的就是这些。那就麻烦你提交文艺部作品集的稿子咯」[p]
*27
#春也
*28
「好的」[p]
*29
#
暑假已近在眼前，我正在和部长商量今年的文艺部作品集的各种细节。[p]
*30
#部长
「那今天就这样吧」[p]
[buchohide]
*31
#春也
「部长」[p]
*32
#
部长转身打算离开。望着她的背影，我不由得叫住了她。[p]
[bucho storage="bucho/buchocn1.png"]
*33
#部长
「怎么了？」[p]
*34
#
虽然特意跟她说这种话有点难为情，但我已经出声挽留，就只好硬着头皮把话说完。[p]
*35
#春也
「……部长，今年这本作品集就是你参与的最后一本了吧」[p]
*36
#部长
「是啊」[p]
*37
#春也
「总觉得，有点伤感呢」[p]
*38
#
[bc/2]部长吃惊得直眨眼。[p]
*39
气氛变得很奇怪。我们互相对视了一会，部长突然扑哧地笑了起来。[p]
*40
#部长
[bc/4]「说什么伤感不伤感的，我本来就没怎么来过活动室啊」[p]
*41
#春也
「但也不是完全不来嘛」[p]
*42
「而且再怎么说，文艺部从春天开始就一直是我们两个在扶持的啊」[p]
*43
#部长
「有那么夸张嘛。我倒是不记得自己为这个社团投注过多少心血啦」[p]
*44
#春也
「那就说明这个地方让你很放心咯？」[p]
*45
#
[kanim name="bucho" keyframe="nod3" time="200" count=2]
“呵呵”，部长笑了笑。我也跟着轻轻地笑了笑。[p]
*46
部长立刻移开了视线，露出一副欲言又止的模样。犹豫过后，她便无奈地笑道。[p]
*47
#部长
「没办法啊。我总有一天会毕业嘛」[p]
*48
「明年就只剩你一个人了呢」[p]
*49
#春也
「嗯，如果没有新人加入的话」[p]
*50
#部长
[bc/1]「……哎，怎么说呢」[p]
*51
「虽然也不指望有什么新人，但我还是会为你加油的啦」[p]
*52
#春也
「你就一点也不期待吗？」[p]
*53
#部长
[bc/4]「就是惯性思维啦。毕竟我们都很难改掉自己的习惯啊」[p]
#
[buchohide]
*54
部长为难地笑了笑，然后便打开了活动室的门。离开前，她又转身看向我。[p]
[bucho storage=bucho/buchocn5.png]
*55
#部长
「但还是，怎么说呢……谢谢你。那就拜啦」[p]
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
[image layer="2" page="back" storage="smartc_zh.png" width=250 left=515 top=30]
[wait time=1000]
[mask_off time=500]

*57
#
活动室里只剩下我一个人。我打开窗户，七月的风和光线也随之钻了进来。[p]
*58
外面的世界在阳光下闪闪发亮，跃入眼中的所有色彩都是那么的鲜艳而亮丽。[p]
*59
从活动室的窗户看到的景色，应该也会随着时间和季节的推移，一点点地发生变化吧。[p]

*60
就在这时，一个想法在脑海中闪现。[p]

*61
对了。[p]

*62
作品集的稿子就以窗户为题吧。小说或散文，或是其他的文体都行。[p]

*63
总之是关于窗户的文字。[p]
[fadeinbgm storage=A_end_loop.ogg time=1500]
[trans_in layer="2" time=500 method="fadeInUp"]
[wait time=500]

*64
有些事虽然没能停留在回忆里，却始终留在我的心中。[p]
[trans_out layer="2" time=500 method="fadeOutUp"]
[wt]

*65
曾经有一个人，为我打开了一扇窗户。那是我一直想要打开的窗户。[p]

*66
我无法想象那是怎样的情景，又是怎样的画面。也许，那个人只是做了一件平平无奇的小事。[p]
*67
神奇的是，虽然不记得种种细节，可我的内心却十分笃定——那件事确确实实地发生过。[p]

*68
所以，也就是说……[p]

*69
我觉得自己必须把这份记忆保存在这个世界的某个地方。[p]

*90
一定要将它铭记在心。[p]

*91
带着这样的想法，我将身子探出了窗外。[p]

*92
我很喜欢这样做。喜欢透过窗户眺望远处的景色。[p]

*93
我也喜欢这个活动室，这个能让我看到窗外风景的活动室。[p]

*94
虽然一开始还嫌这里太过狭小，但现在我可以挺起胸膛说——。[p]

*95
我喜欢这里。[p]

*96
面积虽小，却有一扇大大的窗户。房间里装满了我最重要的东西、最珍视的时光。[p]
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
@jump storage="scenario_en/title.ks" target=*start
