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
С тех пор, сообщения про серийные убийства внезапно прекратились.[p]
*1
Согласно полицейскому расследованию, все жертвы имели судимости, вели себя ужасно, или устраивали потасовки с кем-то в тот день, в который они были убиты.[p]
*2
В итоге, полиция пришла к выводу, что убийства производились кем-то, кто взял на себя роль мстителя.[p]
*3
Я никак не хочу это комментировать. Это лишь справедливая оценка действий виновника.[p]
*4
Всё, что касалось её существования, исчезло. Оно пропало, как будто никогда и не существовало.[p]
*5
Я захожу в клуб, и там никого нет. Её привычное место пустует.[p]
*6
Даже документы и воспоминания о ней были переписаны, и совершенно никто её больше не помнит.[p]
*7
Её фото, которое мы сделали в тот день вместе в саду гортензий, исчезло с моего смартфона.[p]
[bg2 storage ="bg3.png" time=1000]
*8
Мои воспоминания это единственное, что осталось в нашем мире от моей сэмпай.[p]
*9
Всё и вся, что могло бы содержать улики её существования, изменилось.[p]
*10
И даже мои воспоминания понемногу вымываются дождём, становясь слабыми, блеклыми и неточными.[p]
*11
Даже лист бумаги, на который я записываю её имя, чтобы не забыть его, на следующий день становится пустым. Даже записи от руки пропадают.[p]
*12
Я единственный, кто провёл достаточно много времени с сэмпай. Я больше остальных должен быть подвержен последствиям этого переписывания информации.[p]
*13
Однако, я всё ещё сопротивлялся этому.[p]
*14
Но в какой-то момент я окончательно забыл, за что боролся. Я даже забыл, что вёл такую борьбу когда-то.[p]
[bg2 storage ="black.png" time=1000 wait=false]
*15
И мир снова стал обычным.[p]

*16
За одним исключением.[p]
[image layer="2" page="back" storage="smart_ru.png" width=250 left=515 top=30]
[trans_in layer="2" time=500 method="fadeInUp"]
[wt]
*17
В какой-то момент, в памяти смартфона я нашёл фото, которое, уверен, я не делал.[p]
*18
На первый взгляд, это выглядит как простая шутка, но я не знаю, почему я сохранил эту фотографию. Я даже не помню, кому принадлежит это имя.[p]
*19
Но просто вид этого имени погружает меня в ностальгию. Когда я говорю его вслух, то начинаю плакать. Почему?..[p]
*20
Этот человек должен был быть очень важен для меня.[p]
*21
Нет.[p]
*22
Даже сейчас, она самый важный человек для меня.[p]
*23
Я верю, что живу лишь благодаря этому человеку.[p]
*24
И я живу ради неё.[p]
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
#Президент клуба
*26
С учётом всего сказанного, пожалуйста, подготовь свой рассказ для журнала-отчёта клуба.[p]
*27
#Харуя
*28
Хорошо.[p]
*29
#
Летние каникулы уже близко, и мы с президентом проводим собрание касательно последнего журнала нашего клуба за этот год.[p]
*30
#Президент клуба
Что же, тогда это всё.[p]
[buchohide]
*31
#Харуя
Президент.[p]
*32
#
Я непроизвольно окрикиваю президента клуба, когда она уже готовится покинуть помещение.[p]
[bucho storage="bucho/buchocn1.png"]
*33
#Президент клуба
Да?[p]
*34
#
Я чувствую себя немного неловко, говоря такие вещи, но так как я уже остановил её, то у меня нет другого выбора, кроме как сказать это ей.[p]
*35
#Харуя
Президент, это последний журнал нашего клуба за этот год.[p]
*36
#Президент клуба
Это верно.[p]
*37
#Харуя
Просто... Я, как член клуба, буду скучать по тебе.[p]
*38
#
[bc/2]Президент резко моргает.[p]
*39
Какое-то время, мы смотрим друг на друга в странной наступившей атмосфере, но затем она заливается смехом и говорит.[p]
*40
#Президент клуба
[bc/4]Говоришь, будешь скучать по мне? Хотя я совсем редко здесь появлялась?[p]
*41
#Харуя
Но не то, чтобы ты вообще здесь не появлялась...[p]
*42
Кроме того, лишь мы двое удерживали этот клуб на плаву с начала весны.[p]
*43
#Президент клуба
Разве это было трудно? Не помню, чтобы я тут вообще над чем-нибудь заморачивалась.[p]
*44
#Харуя
Но не значит ли это, что это место было для нас уютно?[p]
*45
#
[kanim name="bucho" keyframe="nod3" time="200" count=2]
"Хи-хи-хи", - смеётся она. Я тоже немного хихикаю.[p]
*46
Она на мгновение отводит взгляд и выглядит колеблющейся, но затем она снова пускается в хохот.[p]
*47
#Президент клуба
Ничего не поделаешь. Я выпускаюсь из школы.[p]
*48
В следующем году ты будешь один.[p]
*49
#Харуя
Только если больше никто не вступит.[p]
*50
#Президент клуба
[bc/1]Как бы тебе сказать...[p]
*51
Я бы ни на что не надеялась, но я всё равно болею за тебя.[p]
*52
#Харуя
Ты не думаешь, что такое возможно?[p]
*53
#Президент клуба
[bc/4]Быть пессимисткой - это моя плохая привычка. И людям трудно избавиться от подобного.[p]
#
[buchohide]
*54
Она смеётся, смутившись. Затем она открывает дверь в комнату клуба и поворачивается ко мне в последний раз.[p]
[bucho storage=bucho/buchocn5.png]
*55
#Президент клуба
Но, конечно... Спасибо. Береги себя.[p]
#
[fadeoutbgm time=2000]
[buchohide]
*56
Сказав это, она покидает комнату.[p]
[mask time=500]
[resetfont]
[M3]
@clearfix
[role]
[haruyahide time=0]
[bg2 storage="Alast.jpg" time="0"]
[eval exp="sf.ST6=1"]
[image layer="2" page="back" storage="smartc_ru.png" width=250 left=515 top=30]
[wait time=1000]
[mask_off time=500]

*57
#
Теперь, когда я в комнате один, я открываю нараспашку окно. Лёгкий ветер и июльский свет наполняют помещение.[p]
*58
Вид снаружи ярок и купается в лучах солнца, сияя яркими для глаза цветами.[p]
*59
Картина, видимая из окна этой комнаты клуба, постепенно изменится со временем и сменой сезонов.[p]

*60
И в этот момент мне приходит мысль.[p]

*61
Да, именно.[p]

*62
Напишу для журнала клуба про окна. Что угодно, будь это художественный рассказ или эссе.[p]

*63
Поэтому я начинаю писать про окна.[p]
[fadeinbgm storage=A_end_loop.ogg time=1500]
[trans_in layer="2" time=500 method="fadeInUp"]
[wait time=500]

*64
Я не уверен почему, но в моём мозгу вертится одна странная мысль.[p]
[trans_out layer="2" time=500 method="fadeOutUp"]
[wt]

*65
Воспоминание о дне, когда кто-то открыл для меня окно, которое собирался открыть я сам.[p]

*66
Я уже не представляю, как я поступил в том случае. Выглядит, как обычная бытовая ситуация.[p]
*67
Однако, факт того, что это когда-то произошло, странным образом согревает мне сердце.[p]

*68
Да, это так.[p]

*69
Мне следует оставить послание о том, что такой случай когда-то был в моей жизни. Что я его помню.[p]

*90
Я никогда не забуду.[p]

*91
Подумав об этом, я выглядываю из окна.[p]

*92
Мне нравится это делать. Я долго и внимательно осматриваю пейзаж вдалеке.[p]

*93
Как и комнату клуба. Ту самую комнату, в которой я сейчас нахожусь.[p]

*94
Сначала она казалось слишком тесной, но теперь я с уверенностью могу сказать.[p]

*95
Мне нравится эта комната.[p]

*96
Она маленькая, но в ней есть большое окно, и она полна моих дорогих вещей и воспоминаний.[p]
*97
Да, мне нравится эта комната.[p]
[mask time=1500]
[M0]
@clearfix
@layopt layer="message0" visible=false
[eval exp="sf.Aroot=1"]
[bg2 storage=black.png time=1000]
[wait time=2000]
[mask_off time=1000]
@jump storage="scenario_ru/title.ks" target=*start