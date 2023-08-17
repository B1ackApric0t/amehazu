;=========================================
; CG モード　画面作成
;=========================================
*start
[fadeoutbgm time=1000]
@layopt layer=message0 visible=false

@clearfix
[cm]

[html]
<div id="cgall">
<div class="fadein">
<img src="data/image/en/gallery_bg.png" style="z-index:-10;">
<div class="cg_back" style="left:50px;top:650px;position:absolute;cursor:pointer;z-index:10;">
	<img src="data/image/en/back.png" alt="" class="non">
</div>

<div class='tabs' style="left:330px;">
  <div class='tab-buttons'>
    <span class='content1' style="font-family:EG;font-weight:normal;margin-left:105px;padding-top:10px;transition: .3s;">Capítulos</span>
    <span class='content2' style="font-family:EG;font-weight:normal;padding-top:10px;transition: .3s;">Galería</span>
    [if exp="sf.Aroot == 1 && sf.Broot == 1"]
    <span class='content3' style="font-family:EG;font-weight:normal;padding-top:10px;transition:.3s;">Música</span>
    [else]
    <span style="font-family:EG;padding-top:10px;transition:.3s;opacity:0.5;pointer-events: none;">Música</span>
    [endif]
    <div id='lamp' class='content1 lamp'></div>
  </div>
  <div class='tab-content'>
    
    <div class='content1'>
      <img src="data/image/Escena1.jpg" style="width:400px;" id="chapbg">
      <div id="chaptertitle" style="font-family:EG;margin: 7px 0 7px 15px;">Escena 1. Sharing an umbrella</div>
      <div id="summary" style="font-family:EG;">Haruya and his senpai walk home together under the same umbrella. Before long, Haruya parts ways with her and seems to be alone. However, behind him a huge shadow of a fish creeps upon him.</div>
      <div class="chapterchoice" style="left:455px;">
        <div id="chapter1" class="chap_en">Escena 1. Compartiendo una Sombrilla</div>
        [if exp="sf.S2 == 1"]
        <div id="chapter2" class="chap_en">Escena 2. Cita</div>
        [else][endif]
        [if exp="sf.S3 == 1"]
        <div id="chapter3" class="chap_en">Escena 3. Recuerdo/encuentro</div>
        [else][endif]
        [if exp="sf.S4 == 1"]
        <div id="chapter4" class="chap_en">Escena 4. Jardín de hortensias</div>
        [else][endif]
        [if exp="sf.S5 == 1"]
        <div id="chapter5" class="chap_en">Escena 5. Presagio</div>
        [else][endif]
        [if exp="sf.S6 == 1"]
        <div id="chapter6" class="chap_en">Escena 6. El monstruo de la lluvia</div>
        [else][endif]
        [if exp="sf.S7 == 1"]
        <div id="chapter7" class="chap_en">Escena 7. Conflicto</div>
        [else][endif]
      </div>
      <div class="chapterA" style="left:742px;">
        [if exp="sf.S8a == 1"]
        <div id="chapter8A" class="chap_en">Escena 8A. Conclusión</div>
        [else][endif]
        [if exp="sf.S9a == 1"]
        <div id="chapter9A" class="chap_en">Escena 9A. Despedida</div>
        [else][endif]
        [if exp="sf.S10a == 1"]
        <div id="chapter10A" class="chap_en">Escena 10A. Epilogo</div>
        [else][endif]
      </div>
      <div class="chapterB" style="left:944px;">
        [if exp="sf.S8b == 1"]
        <div id="chapter8B" class="chap_en">Escena 8B. Cara a Cara</div>
        [else][endif]
        [if exp="sf.S9b == 1"]
        <div id="chapter9B" class="chap_en">Escena 9B. Flor del Infierno</div>
        [else][endif]
        [if exp="sf.S10b == 1"]
        <div id="chapter10B" class="chap_en">Escena 10B. “ ”</div>
        [else][endif]
      </div>
      [if exp="sf.Aroot == 1 && sf.Broot == 1"]
      <div id="chapterEX" class="chap_en" style="position:absolute;top:200px;left:870px;">Escena Extra</div>
      [else][endif]
    </div>
    
    <div class='content2'>
      <div style="float:left;position:absolute;top:-10px;left:40px;">
        [if exp="sf.ST1 == 1"]
        <img src="data/bgimage/tonarib.jpg" class="cg" id="tonari">
        [else][endif]
        [if exp="sf.ST2 == 1"]
        <img src="data/bgimage/shadow1.jpg" class="cg" id="shadow">
        [else][endif]
        [if exp="sf.ST3 == 1"]
        <img src="data/bgimage/tekubi.jpg" class="cg" id="tekubi">
        [else][endif]
        [if exp="sf.ST4 == 1"]
        <img src="data/bgimage/te.jpg" class="cg" id="senpai">
        [else][endif]
        [if exp="sf.ST5 == 1"]
        <img src="data/bgimage/vsuyo.jpg" class="cg" id="vsuyo">
        [else][endif]
        [if exp="sf.ST6 == 1"]
        <img src="data/bgimage/Alast.jpg" class="cg" id="alast">
        [else][endif]
        [if exp="sf.ST7 == 1"]
        <img src="data/bgimage/Blast.jpg" class="cg" id="blast">
        [else][endif]
        [if exp="sf.ST8 == 1"]
        <img src="data/bgimage/hug1.jpg" class="cg" id="hug">
        [else][endif]
      </div>
      [if exp="sf.SM1 == 1"]
      <img src="data/bgimage/op.png" class="cg" id="g_op" style="position:absolute;top:297px;left:40px;">
      <div class="try" style="left:140px;">▶</div>
      [else][endif]
      [if exp="sf.SM2 == 1"]
      <img src="data/bgimage/endA.png" class="cg" id="g_ed1" style="position:absolute;top:297px;left:300px;">
      <div class="try" style="left:400px;">▶</div>
      [else][endif]
      [if exp="sf.SM3 == 1"]
      <img src="data/bgimage/endB.png" class="cg" id="g_ed2" style="position:absolute;top:297px;left:560px;">
      <div class="try" style="left:660px;">▶</div>
      [else][endif]
    </div>
    
    <div class='content3'>
      <audio src="data/bgm/main.ogg" id="audiotag"></audio>
      <div style="position:absolute;left:150px;">
        <div id="bgm1" class="m_title_en">Perdidos en la Lluvia</div>
        <div id="bgm2" class="m_title_en">Conversación diaria</div>
        <div id="bgm3" class="m_title_en">Jardín de hortensias</div>
        <div id="bgm4" class="m_title_en">El monstruo de la lluvia</div>
        <div id="bgm5" class="m_title_en">Mi senpai</div>
        <div id="bgm6" class="m_title_en">Perdidos en la Lluvia OPver.</div>
        <div id="bgm7" class="m_title_en">Luz exterior</div>
        <div id="bgm8" class="m_title_en">Hacia el corazón</div>
      </div>
      <div id="play"><img src="data/image/music3.png" class="act"></div>
	  <div id="time">
  		<span id="current" style="position:absolute;top:265px;left:575px;font-weight:bold;font-size:20px;font-family:applimincho;">00:00</span>
		<span id="duration" style="position:absolute;top:265px;left:995px;font-weight:bold;font-size:20px;font-family:applimincho;">00:00</span>
	  </div>
	  <div id="seekbar" style="position:absolute;top:264px;left:647px;"></div>
	  <img src="data/image/music5.png"  style="position:absolute;left:805px;top:328px;">
	  <input type="range" id="volume" style="position:absolute;top:341px;left:800px;width:200px;height:4px;" value="30" min="0" max="99">
	  <div id="bmusic" style="position:absolute;left:580px;top:326px;cursor:pointer;"><img src="data/image/music2.png"></div>
	  <div id="nmusic" style="position:absolute;left:720px;top:326px;cursor:pointer;"><img src="data/image/music4.png"></div>
	  <img src="data/image/music1.png" style="position:absolute;left:670px;top:-20px;" >
    </div>
    
  </div>
  <div id="cgbig" style="left:-330px;"></div>
  <div id="cgvideo" style="left:-330px;"><video src="" autoplay id="vcg"></video></div>
</div>
</div>




<script>
$('.cg_back').click(function(){tyrano.plugin.kag.ftag.startTag("jump", {target:"backtitle"})});

$('.tab-content>div').hide();
$('.tab-content>div').first().slideDown();
  $('.tab-buttons span').click(function(){
    var thisclass=$(this).attr('class');
    $('#lamp').removeClass().addClass('#lamp').addClass(thisclass);
    $('.tab-content>div').each(function(){
      if($(this).hasClass(thisclass)){
        $(this).fadeIn(800);
      }
      else{
        $(this).hide();
      }
    });
  });
  
$('#chapter1').hover(
  function(){
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter1').css('border-left','solid 4px rgba(0,0,0,1)');
    $('#chaptertitle').text('Escena 1. Compartiendo una Sombrilla');
    $('#summary').text('Haruya y su senpai caminan juntos a casa bajo la misma sombrilla. Al poco tiempo, se separan y Haruya parece estar solo. Sin embargo, detrás de él una enorme sombra con forma de pez se le acerca lentamente.');
    $('#chapbg').attr('src','data/image/scene1.jpg');
  },function(){
});
$('#chapter2').hover(
  function(){
    $('#chaptertitle').text('Escena 2. Cita');
    $('#summary').text('En la sala del club de literatura. Senpai invita a Haruya a ir con ella a un jardín de hortensias. Mientras las dos preparan el viaje, Haruya habla con Senpai sobre unos asesinatos en serie que ocurren por todo el país.');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter2').css('border-left','solid 4px rgba(0,0,0,1)');
    [if exp="sf.S3 == 1"]
    $('#chapbg').attr('src','data/image/scene2.jpg');
    [else]$('#chapbg').attr('src','data/bgimage/white.jpg');
    [endif]
  },function(){
});
$('#chapter3').hover(
  function(){
    $('#chaptertitle').text('Escena 3. Recuerdo/encuentro');
    $('#summary').text('Tiempo atrás, cuando Haruya acababa de entrar a la preparatoria. Haruya, incapaz de encontrar su lugar en una escuela repleta de gente reclutando novatos a sus clubes, se topa con una misteriosa Senpai en un salón vacío.');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter3').css('border-left','solid 4px rgba(0,0,0,1)');
    [if exp="sf.S4 == 1"]
    $('#chapbg').attr('src','data/image/scene3.jpg');
    [else]$('#chapbg').attr('src','data/bgimage/white.jpg');
    [endif]
  },function(){
});
$('#chapter4').hover(
  function(){
    $('#chaptertitle').text('Escena 4. Jardín de las hortensias');
    $('#summary').text('Haruya y Yukino toman un autobús y llegan al jardín de hortensias. Los dos pasan un rato tranquilo y feliz juntos, hasta que aparece una sombra misteriosa y ataca a Yukino.');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter4').css('border-left','solid 4px rgba(0,0,0,1)');
    [if exp="sf.S5 == 1"]
    $('#chapbg').attr('src','data/image/scene4.jpg');
    [else]$('#chapbg').attr('src','data/bgimage/white.jpg');
    [endif]
  },function(){
});
$('#chapter5').hover(
  function(){
    $('#chaptertitle').text('Escena 5. Presagio');
    $('#summary').text('Ha pasado un día desde el incidente en el jardín de hortensias. Yukino no se presenta en el club. Haruya está preocupado, y de camino a casa alguien le habla al oído.');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter5').css('border-left','solid 4px rgba(0,0,0,1)');
    [if exp="sf.S6 == 1"]
    $('#chapbg').attr('src','data/image/scene5.jpg');
    [else]$('#chapbg').attr('src','data/bgimage/white.jpg');
    [endif]
  },function(){
});
$('#chapter6').hover(
  function(){
    $('#chaptertitle').text('Escena 6. Monstruo de la Lluvia');
    $('#summary').text('Siguiendo lo que dijo la voz misteriosa, Haruya sale por la puerta principal a la hora indicada. Frente a él aparece un monstruo de lluvia, un tiburón, quien le dice a Haruya algo increíble sobre Yukino.');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter6').css('border-left','solid 4px rgba(0,0,0,1)');
    [if exp="sf.S7 == 1"]
    $('#chapbg').attr('src','data/image/scene6.jpg');
    [else]$('#chapbg').attr('src','data/bgimage/white.jpg');
    [endif]
  },function(){
});
$('#chapter7').hover(
  function(){
    $('#chaptertitle').text('Escena 7. Conflicto');
    $('#summary').text('Después de escuchar la historia del Monstruo de la Lluvia, Haruya no logra tomar una decisión. Mientras está solo en el club de literatura, Yukino y la presidenta del club entran.');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter7').css('border-left','solid 4px rgba(0,0,0,1)');
    [if exp="sf.S8a==1 | | sf.S8b==1"]
    $('#chapbg').attr('src','data/image/scene7.jpg');
    [else]$('#chapbg').attr('src','data/bgimage/white.jpg');
    [endif]
  },function(){
});
$('#chapter8A').hover(
  function(){
    $('#chaptertitle').text('Escena 8A. Conclusion');
    $('#summary').text('Haruya está decidido a intermediar entre Yukino y el Monstruo de la Lluvia. Sin embargo, y a diferencia de lo que esperaba, Haruya es tragado por el Monstruo de la Lluvia y utilizado como rehén para cazar a Yukino.');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter8A').css('border-left','solid 4px rgba(0,0,0,1)');
    [if exp="sf.S9a == 1"]
    $('#chapbg').attr('src','data/image/scene8a.jpg');
    [else]$('#chapbg').attr('src','data/bgimage/white.jpg');
    [endif]
  },function(){
});
$('#chapter9A').hover(
  function(){
    $('#chaptertitle').text('Escena 9A. Despedida');
    $('#summary').text('Haruya y Yukino sobreviven al ataque del Monstruo de la Lluvia. A medida que se aproxima la hora de despedirse, ambos deciden pasar tiempo juntos mientras recorren la ruta habitual de vuelta a casa bajo la misma sombrilla.');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter9A').css('border-left','solid 4px rgba(0,0,0,1)');
    [if exp="sf.S10a == 1"]
    $('#chapbg').attr('src','data/image/scene9a.jpg');
    [else]$('#chapbg').attr('src','data/bgimage/white.jpg');
    [endif]
  },function(){
});
$('#chapter10A').hover(
  function(){
    $('#chaptertitle').text('Escena 10A. Epilogo');
    $('#summary').text('Desde que Yukino desapareció, se han borrado del mundo las pruebas de su existencia. Y Haruya no es una excepción. Sin embargo, dentro de él sigue vivo lo que recibió de su senpai.');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter10A').css('border-left','solid 4px rgba(0,0,0,1)');
    [if exp="sf.Aroot == 1"]
    $('#chapbg').attr('src','data/image/scene10a.jpg');
    [else]$('#chapbg').attr('src','data/bgimage/white.jpg');
    [endif]
  },function(){
});
$('#chapter8B').hover(
  function(){
    $('#chaptertitle').text('Escena 8B. Cara a Cara');
    $('#summary').text('Haruya y Yukino prometen luchar contra el Monstruo de la Lluvia. En este punto de inflexión, ambos deciden pasar el tiempo que les queda como desean. Los dos se dirigen al jardín de hortensias volando a través de la noche.');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter8B').css('border-left','solid 4px rgba(0,0,0,1)');
    [if exp="sf.S9b == 1"]
    $('#chapbg').attr('src','data/image/scene8b.jpg');
    [else]$('#chapbg').attr('src','data/bgimage/white.jpg');
    [endif]
  },function(){
});
$('#chapter9B').hover(
  function(){
    $('#chaptertitle').text('Escena 9B. Flor del Infierno');
    $('#summary').text('Tras llegar al jardín de hortensias, los dos pasan un rato tranquilo bajo la luz de la luna. Derrotan al Monstruo de la Lluvia que les persigue. Ahora que ya no pueden dar marcha atrás, se dirigen a un último lugar.');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter9B').css('border-left','solid 4px rgba(0,0,0,1)');
    [if exp="sf.S10b == 1"]
    $('#chapbg').attr('src','data/image/scene9b.jpg');
    [else]$('#chapbg').attr('src','data/bgimage/white.jpg');
    [endif]
  },function(){
});
$('#chapter10B').hover(
  function(){
    $('#chaptertitle').text('Escena 10B. “ ”');
    $('#summary').text('Haruya y Yukino llegan a la sala del club de literatura. Entran por la ventana e intercambian sus últimos momentos y palabras.');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter10B').css('border-left','solid 4px rgba(0,0,0,1)');
    [if exp="sf.Broot == 1"]
    $('#chapbg').attr('src','data/image/scene10b.jpg');
    [else]$('#chapbg').attr('src','data/bgimage/white.jpg');
    [endif]
  },function(){
});
$('#chapterEX').hover(
  function(){
    $('#chaptertitle').text('Escena Extra. Espalda');
    $('#summary').text('');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapterEX').css('border-left','solid 4px rgba(0,0,0,1)');
    [if exp="sf.SX == 1"]
    $('#chapbg').attr('src','data/image/scene_ex.jpg');
    [else]$('#chapbg').attr('src','data/bgimage/white.jpg');
    [endif]
  },function(){
});
</script>
[endhtml]

[if exp="sf.pc == true"]
[loadjs storage="music.js"]
[else]
[loadjs storage="music2.js"]
[endif]
[loadjs storage="cg_en.js"]
[s]



*backtitle
[cm]
[clearfix]
@jump storage=scenario_es/title.ks target=*start

