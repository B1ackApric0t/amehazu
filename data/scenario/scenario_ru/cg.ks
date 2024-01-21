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
<img src="data/image/ru/gallery_bg.png" style="z-index:-10;">
<div class="cg_back" style="left:50px;top:650px;position:absolute;cursor:pointer;z-index:10;">
	<img src="data/image/ru/back.png" alt="" class="non">
</div>

<div class='tabs' style="left:330px;">
  <div class='tab-buttons'>
    <span class='content1' style="font-family:EG;font-weight:normal;margin-left:105px;padding-top:10px;transition: .3s;">Chapter</span>
    <span class='content2' style="font-family:EG;font-weight:normal;padding-top:10px;transition: .3s;">Gallery</span>
    [if exp="sf.Aroot == 1 && sf.Broot == 1"]
    <span class='content3' style="font-family:EG;font-weight:normal;padding-top:10px;transition:.3s;">Music</span>
    [else]
    <span style="font-family:EG;padding-top:10px;transition:.3s;opacity:0.5;pointer-events: none;">Music</span>
    [endif]
    <div id='lamp' class='content1 lamp'></div>
  </div>
  <div class='tab-content'>
    
    <div class='content1'>
      <img src="data/image/scene1.jpg" style="width:400px;" id="chapbg">
      <div id="chaptertitle" style="font-family:EG;margin: 7px 0 7px 15px;">Сцена 1. Под одним зонтом</div>
      <div id="summary" style="font-family:EG;">Харуя и его сэмпай вместе идут домой под одним зонтом. Вскоре Харуя прощается с ней и остаётся один. Однако, позади него нависает огромная рыбоподобная тень.</div>
      <div class="chapterchoice" style="left:455px;">
        <div id="chapter1" class="chap_en">Сцена 1. Под одним зонтом</div>
        [if exp="sf.S2 == 1"]
        <div id="chapter2" class="chap_en">Сцена 2. Свидание</div>
        [else][endif]
        [if exp="sf.S3 == 1"]
        <div id="chapter3" class="chap_en">Сцена 3. Воспоминание/встреча</div>
        [else][endif]
        [if exp="sf.S4 == 1"]
        <div id="chapter4" class="chap_en">Сцена 4. Сад гортензий</div>
        [else][endif]
        [if exp="sf.S5 == 1"]
        <div id="chapter5" class="chap_en">Сцена 5. Предзнаменование</div>
        [else][endif]
        [if exp="sf.S6 == 1"]
        <div id="chapter6" class="chap_en">Сцена 6. Аякаси Дождя</div>
        [else][endif]
        [if exp="sf.S7 == 1"]
        <div id="chapter7" class="chap_en">Сцена 7. Конфликт</div>
        [else][endif]
      </div>
      <div class="chapterA" style="left:742px;">
        [if exp="sf.S8a == 1"]
        <div id="chapter8A" class="chap_en">Сцена 8A. Исход</div>
        [else][endif]
        [if exp="sf.S9a == 1"]
        <div id="chapter9A" class="chap_en">Сцена 9A. Расставание</div>
        [else][endif]
        [if exp="sf.S10a == 1"]
        <div id="chapter10A" class="chap_en">Сцена 10A. Эпилог</div>
        [else][endif]
      </div>
      <div class="chapterB" style="left:944px;">
        [if exp="sf.S8b == 1"]
        <div id="chapter8B" class="chap_en">Сцена 8B. Лицом к лицу</div>
        [else][endif]
        [if exp="sf.S9b == 1"]
        <div id="chapter9B" class="chap_en">Сцена 9B. Ликорис</div>
        [else][endif]
        [if exp="sf.S10b == 1"]
        <div id="chapter10B" class="chap_en">Сцена 10B. “ ”</div>
        [else][endif]
      </div>
      [if exp="sf.Aroot == 1 && sf.Broot == 1"]
      <div id="chapterEX" class="chap_en" style="position:absolute;top:200px;left:870px;">Бонус-Сцена</div>
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
        <div id="bgm1" class="m_title_en">Пропавшие под дождём</div>
        <div id="bgm2" class="m_title_en">Дневной разговор</div>
        <div id="bgm3" class="m_title_en">Сад гортензий</div>
        <div id="bgm4" class="m_title_en">Аякаси Дождя</div>
        <div id="bgm5" class="m_title_en">Моя Сэмпай</div>
        <div id="bgm6" class="m_title_en">Пропавшие под дождём (опенинг)</div>
        <div id="bgm7" class="m_title_en">Свет снаружи</div>
        <div id="bgm8" class="m_title_en">В сердце</div>
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
    $('#chaptertitle').text('Сцена 1. Под одним зонтом');
    $('#summary').text('Харуя и его сэмпай вместе идут домой под одним зонтом. Вскоре Харуя прощается с ней и остаётся один. Однако, позади него нависает огромная рыбоподобная тень.');
    $('#chapbg').attr('src','data/image/scene1.jpg');
  },function(){
});
$('#chapter2').hover(
  function(){
    $('#chaptertitle').text('Сцена 2. Свидание');
    $('#summary').text('Комната литературного клуба. Сэмпай приглашает Харую вместе побывать в саду гортензий. Пока они строят планы, Харуя напоминает сэмпай о серийных убийствах, происходящих по всей стране.');
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
    $('#chaptertitle').text('Сцена 3. Воспоминание/встреча');
    $('#summary').text('Воспоминания тех времён, когда Харуя только поступил в старшую школу. Не находя места в главном здании школы, полном шума от зазывающих новых участников клубов, Харуя встречает таинственную старшеклассницу, находившуюся в пустой классной комнате.');
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
    $('#chaptertitle').text('Сцена 4. Сад гортензий');
    $('#summary').text('Харуя и Юкино добираются до сада гортензий на автобусе. Пара проводит радостное и умиротворённое время вместе, пока не появляется загадочная тень, которая атакует Юкино.');
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
    $('#chaptertitle').text('Сцена 5. Предзнаменование');
    $('#summary').text('Прошёл день с инцидента в саду гортензий. Юкино так и не появляется в комнате клуба. Харуя размышляет о ней, когда на пути домой он слышит загадочный шёпот у своего уха.');
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
    $('#chaptertitle').text('Сцена 6. Аякаси Дождя');
    $('#summary').text('Следуя словам таинственного голоса, Харуя выходит на крыльцо своего дома в назначенное время. На его глазах начинается дождь, и вскоре появляется акулоподобный монстр, сообщающий Харуе нечто невероятное об Юкино.');
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
    $('#chaptertitle').text('Сцена 7. Конфликт');
    $('#summary').text('Услышав историю Аякаси Дождя, Харуя не может определиться со своим выбором. Он размышляет в литературном клубе в одиночестве, пока в помещение не заходят президент клуба и, затем, Юкино.');
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
    $('#chaptertitle').text('Сцена 8A. Исход');
    $('#summary').text('Харуя намерен стать посредником в переговорах Юкино и Аякаси Дождя. Однако, к его полной неожиданности, Харуя поглощается Аякаси Дождя и становится заложником, с целью шантажа Юкино.');
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
    $('#chaptertitle').text('Сцена 9A. Расставание');
    $('#summary').text('Харуя и Юкино выживают после атаки Аякаси Дождя. Так как момент прощания уже близко, пара решает провести время вместе, следуя привычному маршруту домой под одним зонтом.');
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
    $('#chaptertitle').text('Сцена 10A. Эпилог');
    $('#summary').text('С момента исчезновения Юкино, все следы её существования стираются из реальности. Даже воспоминания Харуи не являются исключением. Однако, пережитое с сэмпай всё ещё живёт где-то в глубине его подсознания.');
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
    $('#chaptertitle').text('Сцена 8B. Лицом к лицу');
    $('#summary').text('Харуя и Юкино объединяются, чтобы победить Аякаси Дождя. Зайдя в тупик, пара решает потратить своё оставшееся время вместе так, как они захотят. Они отправляются в сад гортензий, пролетая по ночному небу.');
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
    $('#chaptertitle').text('Сцена 9B. Ликорис');
    $('#summary').text('Прибыв в сад гортензий, пара наслаждается совместным временем в лунном свете. Они побеждают выследившего их Аякаси Дождя. Теперь обратного пути нет, и они решают направиться в своё последнее пристанище.');
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
    $('#chaptertitle').text('Сцена 10B. “ ”');
    $('#summary').text('Харуя и Юкино прилетают в комнату литературного клуба. Войдя через окно, они переживают свои последние совместные моменты и прощаются.');
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
    $('#chaptertitle').text('Бонус-Сцена');
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
[loadjs storage="cg_ru.js"]
[s]



*backtitle
[cm]
[clearfix]
@jump storage=scenario_ru/title.ks target=*start

