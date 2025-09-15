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
Depuis lors, les dégâts causés par cette affaire de meurtre ont pris fin de manière soudaine.[p]
*1
Selon l'enquête policière, les victimes avaient toutes un casier judiciaire, avaient un mauvais comportement ou avaient eu des problèmes avec quelqu'un le jour où elles ont été tuées.[p]
*2
Pour l'instant, l'enquête de la police semble indiquer que la personne ayant commis ces meurtres pense agir comme un justicier.[p]
*3
Je ne vais rien dire à ce sujet. C'est une évaluation juste de l'auteur des faits.[p]
*4
Tout ce qui laissait une trace d'elle a disparu. Tout a disparu comme si elle n'avait jamais existé.[p]
*5
Je vais à la salle du club, elle n'est pas là. Sa place est vide.[p]
*6
Même les hypothèses et les perceptions à son sujet ont été réécrites, et personne ne se souvient d'elle.[p]
*7
La photo que j'ai prise d'elle ce jour-là dans le jardin d'hortensias a disparu de mon smartphone.[p]
[bg2 storage ="bg3.png" time=1000]
*8
Les souvenirs sont la seule chose qui conserve des traces de Senpai.[p]
*9
Tout ce qui pouvait laisser des traces d'elle a été oublié.[p]
*10
Et même mes souvenirs sont progressivement effacés par la pluie, devenant flous, ténus et vagues.[p]
*11
Même si j'écris son nom sur un bout de papier pour ne pas l'oublier, le lendemain, il sera effacé. Même les souvenirs écrits sont perdus.[p]
*12
C'est moi qui ai passé le plus de temps avec Senpai... Il est impossible que je ne sois pas affecté.[p]
*13
Cependant, j'essayais toujours de résister.[p]
*14
Mais ensuite, j'ai perdu de vue ce contre quoi je me battais. J'ai même oublié que je me battais.[p]
[bg2 storage ="black.png" time=1000 wait=false]
*15
Et le monde est revenu à la normale.[p]

*16
À une exception près.[p]
[image layer="2" page="back" storage="smart_en.png" width=250 left=515 top=30]
[trans_in layer="2" time=500 method="fadeInUp"]
[wt]
*17
À un moment donné, j'avais des photos sur mon smartphone dont je ne me souvenais pas avoir prises.[p]
*18
À première vue, cela ressemble à une blague de mauvais goût, mais je ne sais pas pourquoi j'aurais enregistré une telle image. Je ne me souviens même pas du nom de l'autre personne.[p]
*19
Mais voir ce nom me rend nostalgique. Ça me fait même pleurer quand je le prononce à voix haute. Pourquoi... ?[p]
*20
Cette personne devait être très importante pour moi.[p]
*21
Non.[p]
*22
Même aujourd'hui, elle reste la personne la plus importante à mes yeux.[p]
*23
Je suis sûr que je suis en vie grâce à cette personne.[p]
*24
Et je vis pour elle.[p]
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
[movie storage="amehazuED_A_en.webm" skip=false volume="&sf.current_bgm_vol"]
[elsif exp="sf._system_config_bgm_volume>=1&&sf.SM2==1"]
[movie storage="amehazuED_A_en.webm" skip=true volume="&sf.current_bgm_vol"]
[else]
[movie storage="amehazuED_A_en.webm" skip=true volume=0]
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
#Présidente du club
*26
Enfin bref, envoie ton travail au magazine du club.[p]
*27
#Haruya
*28
Bien.[p]
*29
#
Les vacances d'été approchant à grands pas, la Présidente et moi-même avons une réunion au sujet du dernier magazine du club de cette année.[p]
*30
#Présidente du club
Eh bien, c'est tout.[p]
[buchohide]
*31
#Haruya
Présidente du club.[p]
*32
#
Je m'écrie involontairement en voyant la Présidente sur le point de quitter la salle du club.[p]
[bucho storage="bucho/buchocn1.png"]
*33
#Présidente du club
Oui ?[p]
*34
#
Je suis gêné de répéter une telle chose, mais comme je l'ai déjà arrêtée, je n'ai pas d'autre choix que d'aller jusqu'au bout.[p]
*35
#Haruya
Présidente, voici le dernier magazine du club de l'année.[p]
*36
#Présidente du club
C'est vrai.[p]
*37
#Haruya
C'est juste que... tu vas me manquer au club.[p]
*38
#
[bc/2]The president blinks.[p]
*39
Nous nous regardons pendant un moment dans une atmosphère étrange, puis elle éclate de rire et dit :[p]
*40
#Présidente du club
[bc/4]Tu vas te sentir seul, tu dis ! Même si je ne me montrais presque jamais.[p]
*41
#Haruya
Mais ce n'est pas comme si tu n'étais pas venu du tout non plus...[p]
*42
De plus, on soutien tous les deux ce club depuis le printemps.[p]
*43
#Présidente du club
Est-ce vraiment si grave ? Je ne me souviens pas avoir dépensé beaucoup d'énergie ici.[p]
*44
#Haruya
Cela ne signifie-t-il pas que c'était un endroit confortable ?[p]
*45
#
[kanim name="bucho" keyframe="nod3" time="200" count=2]
“Fufu”, elle rit. Je ris un peu aussi.[p]
*46
Elle détourne les yeux un instant et semble hésitante, mais finalement, elle ne peut s'empêcher d'éclater de rire.[p]
*47
#Présidente du club
Je n'ai pas le choix. Je dois obtenir mon diplôme.[p]
*48
Tu seras seul l'année prochaine.[p]
*49
#Haruya
Seulement si personne d'autre ne se joint à nous.[p]
*50
#Présidente du club
[bc/1]Comment dire...[p]
*51
Je n'aurais pas beaucoup d'espoir, mais je te soutiens.[p]
*52
#Haruya
Tu ne crois pas que ça puisse arriver ?[p]
*53
#Présidente du club
[bc/4]Être négatif est une mauvaise habitude que j'ai. Et il n'est pas facile pour les gens de se débarrasser de leurs habitudes.[p]
#
[buchohide]
*54
Elle rit, embarrassée. Elle ouvre ensuite la porte du club et se retourne une dernière fois.[p]
[bucho storage=bucho/buchocn5.png]
*55
#Présidente du club
Mais, enfin... Merci. Prends soin de toi.[p]
#
[fadeoutbgm time=2000]
[buchohide]
*56
Après avoir dit cela, elle quitte la pièce.[p]
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
Dans la pièce où je suis seul, j'ouvre la fenêtre. La brise et la lumière de juillet pénètrent dans la salle du club.[p]
*58
Le monde extérieur est lumineux et baigné de soleil, et les couleurs qui s'en échappent sont vives à l'œil.[p]
*59
Le paysage vu depuis la fenêtre de cette salle de club changera peu à peu avec le temps et les saisons.[p]

*60
Et c'est à ce moment-là que ça me vient soudainement à l'esprit.[p]

*61
Oui, c'est ça.[p]

*62
Écrivons un article sur les fenêtres dans le magazine du club. Tout est bon, que ce soit un roman ou un essai.[p]

*63
Alors j'écris sur les fenêtres. [p]
[fadeinbgm storage=A_end_loop.ogg time=1500]
[trans_in layer="2" time=500 method="fadeInUp"]
[wait time=500]

*64
Je ne me souviens plus de quoi il s'agissait, mais il y a une chose qui m'est restée en tête.[p]
[trans_out layer="2" time=500 method="fadeOutUp"]
[wt]

*65
Le jour où quelqu'un a ouvert la fenêtre que je voulais ouvrir.[p]

*66
Je ne peux pas imaginer ce que cela ferait dans cette situation. Cela semble être un geste quotidien ordinaire.[p]
*67
Cependant, le fait qu'une telle chose se soit produite est étrangement gravé dans mon cœur.[p]

*68
Alors, c'est ça. [p]

*69
Je devrais laisser une trace quelque part dans ce monde pour dire qu'une telle chose s'est produite. C'est ce que je ressens.[p]

*90
Je n'oublierai jamais. [p]

*91
C'est ce que je pense, alors que je me penche à la fenêtre.[p]

*92
J'aime être comme ça. Je prends le temps de regarder le paysage lointain à l'extérieur.[p]

*93
Et la salle du club. Cette pièce même dans laquelle je me trouve en ce moment.[p]

*94
Au début, je la trouvais exiguë, mais maintenant je peux le dire avec certitude :[p]

*95
J'aime cette pièce.[p]

*96
Elle est petite, mais elle a une grande fenêtre, et elle est remplie de mes objets précieux et de mes souvenirs.[p]
*97
Oui, j'aime cette pièce.[p]
[mask time=1500]
[M0]
@clearfix
@layopt layer="message0" visible=false
[eval exp="sf.Aroot=1"]
[bg2 storage=black.png time=1000]
[wait time=2000]
[mask_off time=1000]
@jump storage="scenario_fr/title.ks" target=*start
