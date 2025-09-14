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
[bg2 storage="busiturain.jpg" time=300]
[playse storage=rain5r.ogg loop=true]
[mask_off time=500]

*start
#
Le lendemain après les cours, dans la salle du club de littérature.[p]
*1
J'attends seul dans la salle du club, mais Senpai ne semble pas vouloir venir.[p]
*2
La petite pièce est remplie d'un silence étouffant, et le bruit de la pluie qui tombe dehors est étrangement fort.[p]
*3
Un ciel gris apparaît à travers la fenêtre.[p]
*4
C'est la première fois qu'elle ne vient pas à l'activité du club.[p]
*5
Le club de littérature est très relax. Plutôt qu'une activité de club, il serait plus juste de le qualifier de lieu de rencontre après l'école, et c'est exactement pour cela que je m'inquiète pour elle.[p]
*6
*7
Je me demande si elle est venue à l'école.[p]
*8
Je suis inquiet, mais je ne sais pas quoi faire.[p]
*9
Même si je lui demandais si elle allait bien physiquement, elle ferait comme si de rien n'était, donc je ne pourrais rien dire d'autre.[p]
*10
La frustration s'accumule et se transforme en irritation.[p]
[mask time=300]
[fadeoutse time=4000]
[kaisou]
[M1]
[bg2 storage=tekubi.jpg time=300]
[mask_off time=300]
*11
Tout ce à quoi je pense, c'est à Senpai, et à cette ombre qui a attiré mon attention.[p]
*12
L'ombre qui a jailli du sol et qui lui a probablement arraché le poignet avant de disparaître à nouveau dans le sol.[p]
*13
Mais qu'est-ce que c'était que cette chose ? Et pourquoi elle essayait de cacher son existence ? Je devrais aussi faire comme si je n'avais rien vu ?[p]
*14
Ma tête fouille dans mes souvenirs et ressort l'affaire des meurtres en série qui a secoué tout le pays. Aux informations, le nombre de victimes a encore augmenté d'une unité.[p]
*15
Naturellement, je fais le lien entre ces deux incidents dans ma tête.[p]
[bg2 storage=black.png time=1000 cross=true]
[M0]
*16
N'est-ce pas l'ombre qui attaque les gens dans tout le pays, et non un meurtrier ordinaire ?[p]
*17
Si tel était le cas, cela expliquerait pourquoi il a été si difficile de retrouver le criminel, ainsi que la raison pour laquelle les crimes sont répartis dans tout le pays.[p]
*18
Cela pourrait expliquer cette boucherie.[p]
*19
C'est possible ? Quelle était cette ombre ? Elle était vraiment là ?[p]
*20
Peut-être que ce qu'elle a dit à propos du trip est vrai, et que l'ombre n'était qu'un produit de mon imagination.[p]
*21
C'est trop confus. Toute spéculation revient à essayer d'attraper le ciel.[p]
*22
La seule chose dont je suis sûr, c'est que nous sommes dans une situation dangereusement suspecte et mystérieuse.[p]
[mask time=300]
[fkaisou]
[bg2 storage=black.png time=300]
[mask_off time=300]
*23
Ça ne sert à rien d'y penser, alors je quitte la salle du club. Je sors mon téléphone de ma poche pour regarder l'heure, mais je n'ai toujours pas de nouvelles de Senpai.[p]
[mhide]
[bg2 storage="entrance.jpg" time=2000 cross=true wait=true method=fadeInRight]
[wait time=200]
[fadeinse storage=rain_kasa.ogg time=3000 loop=true]
[bg2 storage="michi_rain.jpg" time=2000 cross=true wait=true method=fadeInRight]
[mshow]
*24
Alors que je marche sous un ciel nuageux, quelque chose me grimpe dans le cou.[p]
*25
Cette sensation me donne envie de crier, mais je parviens à peine à me retenir. Peut-être un insecte ou quelque chose comme ça ?[p]
*26
J'essaie froter ma nuque avec ma main, mais je n'arrive pas à me débarrasser de cette sensation. Mon cou est mouillé.[p]
*27
Les frissons me montent jusqu'aux oreilles.[p]
[bg2 storage=black.png time=100]
*28
#??
Ce soir, il va pleuvoir.[p]
*29
#
Je tremble. Une voix qui semble provenir des profondeurs de la terre fait vibrer mes tympans.[p]
*30
#??
Au moment du sanglier, j'attendrai à la porte de ta maison.[p]
*31
#
[bg2 storage="michi_rain.jpg" time=500 wait=true]
Quelque chose éclate dans mon oreille. Quand je touche prudemment mon oreille, mes doigts sont mouillés.[p]
*32
Qu'est ce qu'il vient de se passer ?[p]
*33
Une peur comme jamais auparavant m'envahit. J'ai l'impression d'avoir été touché par quelque chose dont je n'aurais pas dû avoir connaissance, par quelque chose que je n'aurais jamais dû entendre.[p]
*34
Pourquoi est-ce que je continue à rencontrer ce genre de choses ? Je ne comprends pas.[p]
*35
Tout ce que je peux déduire, c'est qu'une force surnaturelle hante la ville et semble essayer d'entrer en contact avec moi.[p]
*36
Je suis pris dans quelque chose, et le fait que Senpai ait été attaquée hier doit en faire partie.[p]
*37
Le cœur troublé, je rentre chez moi d'un pas lourd.[p]
[fadeoutse time=1500]
[mask time="1000"]
[bg2 storage="black.png" time="1500"]
[eval exp="sf.S6=1"]
[mask_off time="1500"]
@jump storage="scenario_en/scene6.ks" target=*start