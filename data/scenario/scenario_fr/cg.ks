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
<img src="data/image/fr/gallery_bg.png" style="z-index:-10;">
<div class="cg_back" style="left:50px;top:650px;position:absolute;cursor:pointer;z-index:10;">
	<img src="data/image/fr/back.png" alt="" class="non">
</div>

<div class='tabs' style="left:330px;">
  <div class='tab-buttons'>
    <span class='content1' style="font-family:EG;font-weight:normal;margin-left:105px;padding-top:10px;transition: .3s;">Chapitres</span>
    <span class='content2' style="font-family:EG;font-weight:normal;padding-top:10px;transition: .3s;">Gallerie</span>
    [if exp="sf.Aroot == 1 && sf.Broot == 1"]
    <span class='content3' style="font-family:EG;font-weight:normal;padding-top:10px;transition:.3s;">Musique</span>
    [else]
    <span style="font-family:EG;padding-top:10px;transition:.3s;opacity:0.5;pointer-events: none;">Musique</span>
    [endif]
    <div id='lamp' class='content1 lamp'></div>
  </div>
  <div class='tab-content'>
    
    <div class='content1'>
      <img src="data/image/scene1.jpg" style="width:400px;" id="chapbg">
      <div id="chaptertitle" style="font-family:EG;margin: 7px 0 7px 15px;">Scène 1. Partageant un parapluie</div>
      <div id="summary" style="font-family:EG;">Haruya et Senpai rentrent ensemble à pied sous le même parapluie. Peu après, Haruya se sépare d'elle et semble se retrouver seul. Cependant, derrière lui, l'ombre gigantesque d'un poisson le suit.</div>
      <div class="chapterchoice" style="left:430px;top:48px;">
        <div id="chapter1" class="chap_en">Scène 1. Partageant un parapluie</div>
        [if exp="sf.S2 == 1"]
        <div id="chapter2" class="chap_en">Scène 2. Rendez-vous</div>
        [else][endif]
        [if exp="sf.S3 == 1"]
        <div id="chapter3" class="chap_en">Scène 3. Souvenir/rencontre</div>
        [else][endif]
        [if exp="sf.S4 == 1"]
        <div id="chapter4" class="chap_en">Scène 4. Jardin d'hortensias</div>
        [else][endif]
        [if exp="sf.S5 == 1"]
        <div id="chapter5" class="chap_en">Scène 5. Présage</div>
        [else][endif]
        [if exp="sf.S6 == 1"]
        <div id="chapter6" class="chap_en">Scène 6. Le monstre de pluie</div>
        [else][endif]
        [if exp="sf.S7 == 1"]
        <div id="chapter7" class="chap_en">Scène 7. Conflit</div>
        [else][endif]
      </div>
      <div class="chapterA" style="left:742px;">
        [if exp="sf.S8a == 1"]
        <div id="chapter8A" class="chap_en">Scène 8A. Conclusion</div>
        [else][endif]
        [if exp="sf.S9a == 1"]
        <div id="chapter9A" class="chap_en">Scène 9A. Séparation</div>
        [else][endif]
        [if exp="sf.S10a == 1"]
        <div id="chapter10A" class="chap_en">Scène 10A. Épilogue</div>
        [else][endif]
      </div>
      <div class="chapterB" style="left:944px;">
        [if exp="sf.S8b == 1"]
        <div id="chapter8B" class="chap_en">Scène 8B. Face à face</div>
        [else][endif]
        [if exp="sf.S9b == 1"]
        <div id="chapter9B" class="chap_en">Scène 9B. Lys araignée</div>
        [else][endif]
        [if exp="sf.S10b == 1"]
        <div id="chapter10B" class="chap_en">Scène 10B. “ ”</div>
        [else][endif]
      </div>
      [if exp="sf.Aroot == 1 && sf.Broot == 1"]
      <div id="chapterEX" class="chap_en" style="position:absolute;top:200px;left:870px;">Scène Extra</div>
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
        <div id="bgm1" class="m_title_en">Absent in the Rain</div>
        <div id="bgm2" class="m_title_en">Daily conversation</div>
        <div id="bgm3" class="m_title_en">Hydrangea garden</div>
        <div id="bgm4" class="m_title_en">Rain Monster</div>
        <div id="bgm5" class="m_title_en">My senpai</div>
        <div id="bgm6" class="m_title_en">Absent in the Rain OPver.</div>
        <div id="bgm7" class="m_title_en">The light outside</div>
        <div id="bgm8" class="m_title_en">Into the heart</div>
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
    $('#chaptertitle').text('Scène 1. Partageant un parapluie');
    $('#summary').text('Haruya et Senpai rentrent ensemble à pied sous le même parapluie. Peu après, Haruya se sépare d'elle et semble se retrouver seul. Cependant, derrière lui, l'ombre gigantesque d'un poisson le suit.');
    $('#chapbg').attr('src','data/image/scene1.jpg');
  },function(){
});
$('#chapter2').hover(
  function(){
    $('#chaptertitle').text('Scène 2. Rendez-vous');
    $('#summary').text('Dans la salle du club de littérature. Senpai invite Haruya à l'accompagner dans un jardin d'hortensias. Alors qu'ils font des projets, Haruya parle à la senpai d'une affaire de meurtres en série qui secoue tout le pays.');
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
    $('#chaptertitle').text('Scène 3. Souvenir/rencontre');
    $('#summary').text('À l'époque où Haruya venait d'entrer au lycée. Haruya, qui ne trouvait pas sa place dans une école très active dans le recrutement de nouveaux membres pour les clubs, rencontre une mystérieuse Senpai dans une salle de classe vide.');
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
    $('#chaptertitle').text('Scène 4. Jardin d'hortensias');
    $('#summary').text('Haruya et Yukino prennent un bus et arrivent au jardin d'hortensias. Ils passent un moment paisible et heureux ensemble, jusqu'à ce qu'une ombre mystérieuse apparaisse et attaque Yukino.');
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
    $('#chaptertitle').text('Scène 5. Présage');
    $('#summary').text('Un jour s'est écoulé depuis l'incident dans le jardin d'hortensias. Yukino ne s'est pas présentée au club. Haruya est inquiet, et sur le chemin du retour, quelqu'un lui parle à l'oreille.');
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
    $('#chaptertitle').text('Scène 6. Le monstre de pluie');
    $('#summary').text('Suivant les instructions de la voix mystérieuse, Haruya sort par la porte d'entrée à l'heure prévue. Devant lui apparaît le monstre de pluie et de requin, qui lui raconte quelque chose d'incroyable à propos de Yukino.');
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
    $('#chaptertitle').text('Scène 7. Conflit');
    $('#summary').text('Après avoir entendu l'histoire du monstre de pluie, Haruya n'arrive pas à se décider. Il est seul dans le club de littérature lorsque Yukino et le président du club entrent.');
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
    $('#chaptertitle').text('Scène 8A. Conclusion');
    $('#summary').text('Haruya est déterminé à servir de médiateur entre Yukino et le monstre de pluie. Cependant, contrairement à ce qu'il avait prévu, Haruya est avalé par le monstre de pluie et utilisé comme otage pour traquer Yukino.');
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
    $('#chaptertitle').text('Scène 9A. Séparation');
    $('#summary').text('Haruya et Yukino survivent à l'attaque du Monstre de pluie. Alors que le moment de se dire au revoir approche, les deux décident de passer du temps ensemble en suivant le chemin habituel pour rentrer chez eux sous le même parapluie.');
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
    $('#chaptertitle').text('Scène 10A. Épilogue');
    $('#summary').text('Depuis la disparition de Yukino, toute trace de son existence a été effacée du monde. Haruya ne fait pas exception. Cependant, ce qu'il a reçu de Senpai est toujours vivant en lui.');
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
    $('#chaptertitle').text('Scène 8B. Face à face');
    $('#summary').text('Haruya et Yukino jurent de se rebeller contre Rain Ayakashi. Dans l'impasse temporaire, les deux décident de passer le temps qui leur reste comme ils le souhaitent. Ils se dirigent vers le jardin d'hortensias en volant dans la nuit.');
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
    $('#chaptertitle').text('Scène 9B. Lys araignée');
    $('#summary').text('Après être arrivés au jardin d'hortensias, ils passent un moment paisible sous le clair de lune. Ils vainquent le monstre de pluie qui les poursuivait. Ils ne peuvent plus faire demi-tour, alors ils se dirigent vers le dernier endroit.');
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
    $('#chaptertitle').text('Scène 10B. “ ”');
    $('#summary').text('Haruya et Yukino arrivent à la salle du club de littérature. Ils entrent par la fenêtre et échangent leurs derniers moments et leurs dernières paroles.');
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
    $('#chaptertitle').text('Scène Extra');
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
[loadjs storage="cg_fr.js"]
[s]



*backtitle
[cm]
[clearfix]
@jump storage=scenario_fr/title.ks target=*start

