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
Since then, the damage caused by the murder case has come to a sudden stop.[p]
*1
According to the police investigation, the victims all had criminal records, had bad behavior, or were in trouble with someone on the day they were killed.[p]
*2
For the time being, the police are investigating the murders under the assumption they were work of someone acting like a vigilante.[p]
*3
I’m not going to say anything about this. It’s a fair assessment of the perpetrator.[p]
*4
Everything that left a trace of her has disappeared. It disappeared as if she had never existed.[p]
*5
I go to the clubroom, she is not there. Her seat is empty.[p]
*6
Even the assumptions and perceptions about her have been rewritten, and nobody remembers her.[p]
*7
The photo of her I took at the hydrangea garden that day has disappeared from my smartphone.[p]
[bg2 storage ="bg3.png" time=1000]
*8
Memories are the only thing that retains any vestiges of my senpai.[p]
*9
Everything and anything that left her traces has been lost.[p]
*10
And even my memories are gradually washed away by the rain, becoming faint, thin, and vague.[p]
*11
Even if I write down her name on a piece of paper so that I won’t forget it, the next day it will be blank. Even written memories are lost.[p]
*12
I’m the one who spent most of my time with senpai. There’s no way I wouldn’t be affected by the law of coherence.[p]
*13
However, I was still trying to resist.[p]
*14
But then I lost track of what I was fighting against. I forgot that I was even fighting.[p]
[bg2 storage ="black.png" time=1000 wait=false]
*15
And the world went back to normal.[p]

*16
With one exception.[p]
[image layer="2" page="back" storage="smart_en.png" width=250 left=515 top=30]
[trans_in layer="2" time=500 method="fadeInUp"]
[wt]
*17
At some point, I had photos on my smartphone that I didn’t remember taking.[p]
*18
At first glance, it looks like a cheap prank, but I don’t know why I would be saving such an image. I don’t even remember the other person’s name.[p]
*19
But seeing that name makes me feel nostalgic. It even makes me cry when I say it out loud. Why...?[p]
*20
This person must have been very important to me.[p]
*21
No.[p]
*22
Even now, she’s the most important person to me.[p]
*23
I’m sure I’m alive thanks to this person.[p]
*24
And I’m living for her.[p]
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
[movie storage="amehazuED_Aen.webm" skip=false volume="&sf.current_bgm_vol"]
[elsif exp="sf._system_config_bgm_volume>=1&&sf.SM2==1"]
[movie storage="amehazuED_Aen.webm" skip=true volume="&sf.current_bgm_vol"]
[else]
[movie storage="amehazuED_Aen.webm" skip=true volume=0]
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
#Club President
*26
With that said, please submit your work to the club magazine.[p]
*27
#Haruya
*28
Alright.[p]
*29
#
With summer vacation just around the corner, the president and I are having a meeting about this year’s last club magazine.[p]
*30
#Club President
Well then, that’s it.[p]
[buchohide]
*31
#Haruya
President.[p]
*32
#
I involuntarily call out to the president when she’s about to leave the club room.[p]
[bucho storage="bucho/buchocn1.png"]
*33
#Club President
Yes?[p]
*34
#
I feel embarrassed to say something like this again, but since I have already stopped her, I have little choice but to go ahead with it.[p]
*35
#Haruya
President, this is the last club magazine of the year.[p]
*36
#Club President
That’s right.[p]
*37
#Haruya
It’s just... I’m going to miss you in the club.[p]
*38
#
[bc/2]The president blinks.[p]
*39
We look at each other in a strange atmosphere for a while, but then she bursts into laughter and says:[p]
*40
#Club President
[bc/4]You’ll be lonely, you say! Even though I barely showed my face.[p]
*41
#Haruya
But it’s not like you didn’t come at all, either...[p]
*42
Besides, the two of us have been supporting this club since spring.[p]
*43
#Club President
Is it such a big deal? I don’t remember spending any energy here.[p]
*44
#Haruya
Doesn’t that mean it was a comfortable place?[p]
*45
#
[kanim name="bucho" keyframe="nod3" time="200" count=2]
“Fufu”, she laughs. I laugh a little too.[p]
*46
She averts her eyes for a moment and looks hesitant, but in the end, she can’t hold back and ends up laughing.[p]
*47
#Club President
It can’t be helped. I have to graduate.[p]
*48
You will be alone next year.[p]
*49
#Haruya
Only if nobody else joins.[p]
*50
#Club President
[bc/1]How to say it...[p]
*51
I wouldn’t have high hopes, but I’m rooting for you.[p]
*52
#Haruya
You don’t think it can happen?[p]
*53
#Club President
[bc/4]Being negative is a bad habit of mine. And it’s not easy for people to get out of their habits.[p]
#
[buchohide]
*54
She laughs embarrassedly. She then opens the door of the clubroom and turns around one last time.[p]
[bucho storage=bucho/buchocn5.png]
*55
#Club President
But, well... Thank you. Take care.[p]
#
[fadeoutbgm time=2000]
[buchohide]
*56
After saying that, she leaves the room.[p]
[mask time=500]
[resetfont]
[M3]
@clearfix
[role]
[haruyahide time=0]
[bg2 storage="Alast.jpg" time="0"]
[eval exp="sf.ST6=1"]
[image layer="2" page="back" storage="smartc_en.png" width=250 left=515 top=30]
[wait time=1000]
[mask_off time=500]

*57
#
In the room where I’m alone, I open the window. The breeze and light of July enter the clubroom.[p]
*58
The outside world is bright and bathed in sunlight, and the colors that fly in are vivid to the eye.[p]
*59
The scenery seen from the window of this club room will change little by little with the passing of time and seasons.[p]

*60
And that’s the moment I suddenly come up with it.[p]

*61
Yes, that’s it.[p]

*62
Let’s write about windows in the club magazine. Anything is fine, whether it’s a novel or an essay about windows.[p]

*63
So I write about windows.[p]
[fadeinbgm storage=A_end_loop.ogg time=1500]
[trans_in layer="2" time=500 method="fadeInUp"]
[wait time=500]

*64
I don’t remember what, but there’s one thing that’s stuck to my mind.[p]
[trans_out layer="2" time=500 method="fadeOutUp"]
[wt]

*65
Of a day when someone opened the window I wanted to open.[p]

*66
I can’t imagine what it would be like in that situation. It seems like an ordinary daily gesture.[p]
*67
However, the fact that such a thing happened is strangely burned into my heart.[p]

*68
So, this is it.[p]

*69
I should leave notice somewhere in this world that such a thing happened. That’s what I feel.[p]

*90
I’ll never forget.[p]

*91
I think that, as I lean out the window.[p]

*92
I like being like this. I take my time to look at the distant scenery outside.[p]

*93
And the clubroom. This exact room I’m in right now.[p]

*94
At first, it felt cramped, but now I can say it with confidence:[p]

*95
I like this room.[p]

*96
It’s small, but it has a big window, and it’s full of my precious things and time.[p]
*97
Yes, I like this room.[p]
[mask time=1500]
[M0]
@clearfix
@layopt layer="message0" visible=false
[eval exp="sf.Aroot=1"]
[bg2 storage=black.png time=1000]
[wait time=2000]
[mask_off time=1000]
@jump storage="scenario_en/title.ks" target=*start
