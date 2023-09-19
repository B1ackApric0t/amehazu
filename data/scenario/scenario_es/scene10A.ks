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
Desde ese momento, los asesinatos se detuvieron abruptamente.[p]
*1
Según las investigaciones policiales, todas las víctimas tenían antecedentes[r]penales, mala conducta o tenían problemas con alguien el día en que fueron[r]asesinadas.[p]
*2
Por el momento, la policía investiga los asesinatos bajo la hipótesis de que[r]fueron obra de alguien que actuaba como un vigilante.[p]
*3
No voy a decir nada sobre esto. Tienen algo de razón en sus conclusiones.[p]
*4
Todo lo que había dejado un rastro de ella desapareció. [r] Desapareció como si nada hubiera pasado desde el principio.[p]
*5
Cuando volví al club, Senpai no estaba allí. Su asiento estaba vacío.[p]
*6
Incluso las percepciones se habían reescrito, y nadie se acordaba de Senpai.[p]
*7
Las fotos que me tome con Senpai aquel día en el jardín de hortensias también[r]habían desaparecido de mi teléfono.[p]
[bg2 storage ="bg3.png" time=1000]
*8
Lo único que queda de Senpai ahora son unas cosas terriblemente vagas llamada memorias.[p]
*9
Absolutamente cualquier cosa que haya dejado su rastro se ha perdido.[p]
*10
E incluso mis recuerdos son gradualmente arrastrados por la lluvia, volviéndose[r]débiles, tenues y vagos.[p]
*11
Aunque escriba su nombre en un papel para no olvidarlo, al día siguiente[r]estará en blanco. Incluso el recuerdo de escribirlo acaba perdiéndose.[p]
*12
Yo soy el que ha pasado la mayor parte del tiempo con Senpai. Es imposible[r]que no me afecte la ley de la coherencia.[p]
*13
Sin embargo, yo seguía intentando resistir.[p]
*14
Pero al final perdí la noción de resistirme. Incluso olvidé a qué me resistía.[p]
[bg2 storage ="black.png" time=1000 wait=false]
*15
Y el mundo volvió a la normalidad.[p]
*16
Con una excepción.[p]
[image layer="2" page="back" storage="smart_en.png" width=250 left=515 top=30]
[trans_in layer="2" time=500 method="fadeInUp"]
[wt]
*17
En algún momento, mi telefono tenía una foto que no recordaba.[p]
*18
A primera vista parece una broma barata, pero no sé por qué guardo estas[r]imágenes. Y ni siquiera recuerdo el nombre de la otra persona.[p]
*19
Pero cuando miro ese nombre, siento nostalgia. Incluso me dan ganas de[r]llorar cuando lo digo en voz alta. ¿Por qué?[p]
*20
Estoy seguro de que esta persona era muy importante para mí.[p]
*21
No.[p]
*22
Probablemente siga siendo más importante para mí que cualquier otra persona.[p]
*23
Estoy seguro de que estoy vivo gracias a esa persona.[p]
*24
Y supongo que seguiré viviendo gracias a esta persona.[p]
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
[movie storage="amehazuED_A_es.webm" skip=false volume="&sf.current_bgm_vol"]
[elsif exp="sf._system_config_bgm_volume>=1&&sf.SM2==1"]
[movie storage="amehazuED_A_es.webm" skip=true volume="&sf.current_bgm_vol"]
[else]
[movie storage="amehazuED_A_es.webm" skip=true volume=0]
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
#Presidenta del Club
*26
Así que… Envía tu trabajo a la revista del club, gracias.[p]
*27
#Haruya
*28
Entendido.[p]
*29
#
Con las vacaciones de verano a la vuelta de la esquina, la presidenta del club[r]y yo hablábamos de la revista del club de este año.[p]
*30
#Presidenta del Club
Bueno, eso es todo.[p]
[buchohide]
*31
#Haruya
Presidenta.[p]
*32
#
Sin querer, detuve a la presidenta del club quien salía de la sala.[p]
[bucho storage="bucho/buchocn1.png"]
*33
#Presidenta del Club
¿Sí?[p]
*34
#
Me daba un poco de vergüenza decirlo, pero como ya la había detenido,[r]tenia que decirlo.[p]
*35
#Haruya
……Ésta es la última revista del club de este año, ¿no?[p]
*36
#Presidenta del Club
Sí[p]
*37
#Haruya
Bueno. Te extrañaré.[p]
*38
#
[bc/2]La presidenta parpadea.[p]
*39
Nos miramos extrañados durante un rato, pero entonces ella estalla[r]en carcajadas y dice:[p]
*40
#Presidenta del Club
[bc/4]¡Te sentirás solo, dices! Y eso que apenas me asomé por aquí.[p]
*41
#Haruya
No es como si no hubieras venido.[p]
*42
Además, los dos llevamos apoyando a este club desde la primavera.[p]
*43
#Presidenta del Club
¿Es para tanto? No recuerdo haber gastado energía aquí.[p]
*44
#Haruya
Supongo que así de relajado era el lugar, ¿no?[p]
*45
#
[kanim name="bucho" keyframe="nod3" time="200" count=2]
"Fufu", se ríe. Yo también me río un poco.[p]
*46
Ella desvía la mirada por un momento y se ve vacilante, pero al final, no[r]puede contenerse y termina riéndose y diciendo.[p]
*47
#Presidenta del Club
No puedo evitarlo. Tengo que graduarme.[p]
*48
Estarás solo el próximo año.[p]
*49
#Haruya
Si nadie se une, lo estaré.[p]
*50
#Presidenta del Club
[bc/1]Cómo decirlo…[p]
*51
No tendría muchas esperanzas, pero igual te apoyo.[p]
*52
#Haruya
¿No tienes esperanzas?[p]
*53
#Presidenta del Club
[bc/4]Ser negativo es un mal hábito mío y no es fácil para la gente salir de[r]sus hábitos.[p]
#
[buchohide]
*54
Ella se ríe avergonzada, luego abre la puerta del salón del club y[r]se da la vuelta por última vez.[p]
[bucho storage=bucho/buchocn5.png]
*55
#Presidenta del Club
Pero bueno…… Gracias. Cuídate.[p]
#
[fadeoutbgm time=2000]
[buchohide]
*56
Después de decir eso, la presidenta salió de la habituación.[p]
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
Ahora solo en el salón, abrí la ventana. La brisa y la luz de julio entran en el salón del club.[p]
*58
El mundo exterior está bañado por la brillante luz del sol, los colores que entran son vívidos a la vista.[p]
*59
El paisaje que se ve desde la ventana de este salón, cambiará poco a poco con el cambio del tiempo y estación.[p]
*60
Fue cuando, de repente se me ocurrió.[p]
*61
Claro.[p]
*62
Escribamos sobre ventanas en la revista del club. Cualquier cosa está bien, ya sea una novela o un poema sobre ventanas.[p]
*63
Así que escribí sobre ventanas.[p]
[fadeinbgm storage=A_end_loop.ogg time=1500]
[trans_in layer="2" time=500 method="fadeInUp"]
[wait time=500]

*64
No recuerdo qué, pero hay una cosa que se me quedó grabada.[p]
[trans_out layer="2" time=500 method="fadeOutUp"]
[wt]

*65
De que alguien, en algún momento abrió la ventana que yo quería abrir.[p]

*66
No me puedo imaginar cómo sería esa situación, parece un gesto cotidiano normal.[p]
*67
Pero por alguna razón eso se me quedó grabado en el corazón.[p]
*68
Y es por eso.[p]
*69
Debería dejar algo en algún lugar de este mundo que me recuerde que eso pasó. Así es como me siento.[p]

*90
Para que nunca lo olvide.[p]

*91
Mientras me asomo por la ventana, pienso sobre eso.[p]

*92
Me gusta esto. Me tomo mi tiempo para mirar el paisaje distante afuera.[p]

*93
Y este salón del club. Esta habitación exacta en la que estoy ahora.[p]

*94
Al principio se sentía pequeño, pero ahora puedo decirlo con confianza.[p]

*95
Me gusta este salón.[p]

*96
Es pequeño, pero tiene una ventana grande y está lleno de mis preciosas cosas y recuerdos.[p]
*97
Realmente me gusta este salón.[p]
[mask time=1500]
[M0]
@clearfix
@layopt layer="message0" visible=false
[eval exp="sf.Aroot=1"]
[bg2 storage=black.png time=1000]
[wait time=2000]
[mask_off time=1000]
@jump storage="scenario_es/title.ks" target=*start
