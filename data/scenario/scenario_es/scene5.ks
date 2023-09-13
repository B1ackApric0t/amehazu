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
Al día siguiente. Después de la escuela.[p]
*1
Esperé solo en la sala del club, pero no había señales de que Senpai fuera a[r]venir.[p]
*2
En la pequeña habitación se respira un silencio asfixiante, y el sonido de la[r]lluvia en el exterior es extrañamente fuerte.[p]
*3
Un cielo gris se asomaba por la ventana del club.[p]
*4
Era la primera vez que Senpai no venía a las actividades del club.[p]
*5
Este club de literatura es un club muy relajado, es mas un lugar para pasar el[r]rato después de la escuela, pero por eso mismo estoy tan preocupado por Senpai.[p]
*6
*7
……¿Será que vino a la escuela?[p]
*8
Aunque esté preocupado por Senpai, no sé qué hacer.[p]
*9
Ni siquiera puedo preguntarle si su cuerpo está bien, No puedo seguir[r]insistiendo porque actúa como si nada hubiera pasado.[p]
*10
Mi frustración aumenta y se convierte en ira.[p]
[mask time=300]
[fadeoutse time=4000]
[kaisou]
[M1]
[bg2 storage=tekubi.jpg time=300]
[mask_off time=300]
*11
Sólo puedo pensar en mi Senpai. Luego está esa sombra que me llamó la atención por sorpresa.[p]
*12
Esa sombra que saltó de la tierra, que probablemente le arrancó la muñeca de un mordisco a Senpai y después, desapareció.[p]
*13
¿Qué era esa cosa? ¿Por qué Senpai intenta ocultarme la existencia de esa cosa?[r]¿Por qué es tan reservada al respecto?[p]
*14
Por alguna razón, mi mente piensa en el caso de los asesinatos en serie. Las noticias de hoy han vuelto a aumentar en uno el número de víctimas.[p]
*15
Naturalmente, los dos incidentes están conectados en mi mente.[p]
[bg2 storage=black.png time=1000 cross=true]
[M0]
*16
¿No es esa sombra la que está atacando a la gente en todo el país, y no asesinos[r]como la gente piensa?[p]
*17
Eso explicaría por qué no se puede localizar a los responsables y por qué los[r]delitos se reparten por todo el país.[p]
*18
Todo tiene sentido, pero…[p]
*19
¿Cómo es posible?¿Qué era esa sombra en primer lugar? ¿Estaba realmente allí?[p]
*20
¿Y si esa sombra fue una equivocación de mi parte, y lo que Senpai dijo era[r]cierto, y realmente sólo se cayó en ese momento?[p]
*21
……No lo sé. Es demasiado confuso. Cualquier especulación es como intentar[r]agarrar el cielo…[p]
*22
Lo único que sé es que ahora nos encontramos en una situación un tanto peligrosa, sospechosa e inexplicable.[p]
[mask time=300]
[fkaisou]
[bg2 storage=black.png time=300]
[mask_off time=300]
*23
No puedo dejar de pensar en ello, así que decido salir de la sala del club. Saqué mi teléfono del bolsillo para ver qué hora era, pero no había ningún mensaje de Senpai.[p]
[mhide]
[bg2 storage="entrance.jpg" time=2000 cross=true wait=true method=fadeInRight]
[wait time=200]
[fadeinse storage=rain_kasa.ogg time=3000 loop=true]
[bg2 storage="michi_rain.jpg" time=2000 cross=true wait=true method=fadeInRight]
[mshow]
*24
Algo me subió por el cuello mientras caminaba bajo un cielo nublado.[p]
*25
Estuve a punto de gritar ante la sensación, pero me contuve. ¿Acaso es un insecto[r]o algo así?[p]
*26
Intenté pasarme la mano por la nuca, pero no logré deshacerme de la sensación.[r]Mi cuello está algo húmedo. [p]
*27
Entonces esta vez lo que se movía por mi cuerpo se acercó a mi oído.[p]
[bg2 storage=black.png time=100]
*28
#??
Esta noche lloverá.[p]
*29
#
Me quedé horrorizado. Una voz que sonaba como si resonara desde las[r]profundidades de la tierra sacudió mis tímpanos.[p]
*30
#??
A la hora del jabalí. Espéreme en la puerta de su morada.[p]
*31
#
[bg2 storage="michi_rain.jpg" time=500 wait=true]
Algo suena en mi oído. Temeroso, me toqué los oídos y sentí que las[r]yemas de mis dedos estaban mojadas.[p]
*32
¿Qué fue eso?[p]
*33
De repente estoy aterrorizado. Siento que me han dicho algo que no debería[r]saber, algo que no debería oír.[p]
*34
¿Por qué sigo encontrando cosas como esta? No sé por qué.[p]
*35
Lo único que sabía era que algo paranormal rondaba ahora esta ciudad,[r]y parecía estar tratando de involucrarse conmigo.[p]
*36
Aparentemente ahora yo estaba involucrado en algo. Y el ataque a Senpai[r]de ayer, debe haber sido parte de ese algo.[p]
*37
Con esa inquietud en mi corazón, me dirigí a casa a pasos pesados.[p]
[fadeoutse time=1500]
[mask time="1000"]
[bg2 storage="black.png" time="1500"]
[eval exp="sf.S6=1"]
[mask_off time="1500"]
@jump storage="scenario_es/scene6.ks" target=*start