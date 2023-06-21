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
    <span class='content1' style="font-family:EG;font-weight:normal;height:90px;margin-left:105px;margin-top:-55px;padding-top:10px;transition: .3s;">Chapter Selection</span>
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
      <div id="chaptertitle" style="font-family:EG;">Scene 1. Sharing an umbrella</div>
      <div id="summary" style="font-family:EG;">Haruya and his senpai walk home together under the same umbrella. Before long, Haruya parts ways with her and seems to be alone. However, behind him a huge shadow of a fish creeps upon him.</div>
      <div class="chapterchoice" style="left:455px;">
        <div id="chapter1" class="chap_en">Scene 1. Sharing an umbrella</div>
        [if exp="sf.S2 == 1"]
        <div id="chapter2" class="chap_en">Scene 2. Date</div>
        [else][endif]
        [if exp="sf.S3 == 1"]
        <div id="chapter3" class="chap_en">Scene 3. Reminiscence/encounter</div>
        [else][endif]
        [if exp="sf.S4 == 1"]
        <div id="chapter4" class="chap_en">Scene 4. Hydrangea garden</div>
        [else][endif]
        [if exp="sf.S5 == 1"]
        <div id="chapter5" class="chap_en">Scene 5. Omen</div>
        [else][endif]
        [if exp="sf.S6 == 1"]
        <div id="chapter6" class="chap_en">Scene 6. Rain Monster</div>
        [else][endif]
        [if exp="sf.S7 == 1"]
        <div id="chapter7" class="chap_en">Scene 7. Conflict</div>
        [else][endif]
      </div>
      <div class="chapterA" style="left:742px;">
        [if exp="sf.S8a == 1"]
        <div id="chapter8A" class="chap_en">Scene 8A. Conclusion</div>
        [else][endif]
        [if exp="sf.S9a == 1"]
        <div id="chapter9A" class="chap_en">Scene 9A. Parting</div>
        [else][endif]
        [if exp="sf.S10a == 1"]
        <div id="chapter10A" class="chap_en">Scene 10A. Epilogue</div>
        [else][endif]
      </div>
      <div class="chapterB" style="left:944px;">
        [if exp="sf.S8b == 1"]
        <div id="chapter8B" class="chap_en">Scene 8B. Face-to-face</div>
        [else][endif]
        [if exp="sf.S9b == 1"]
        <div id="chapter9B" class="chap_en">Scene 9B. Spider lily</div>
        [else][endif]
        [if exp="sf.S10b == 1"]
        <div id="chapter10B" class="chap_en">Scene 10B. “ ”</div>
        [else][endif]
      </div>
      [if exp="sf.Aroot == 1 && sf.Broot == 1"]
      <div id="chapterEX" class="chap_en" style="position:absolute;top:200px;left:870px;">Extra Scene</div>
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
        <div id="bgm1" class="m_title_en">Absent in the Spring Rain</div>
        <div id="bgm2" class="m_title_en">Daily conversation</div>
        <div id="bgm3" class="m_title_en">Hydrangea garden</div>
        <div id="bgm4" class="m_title_en">Rain Monster</div>
        <div id="bgm5" class="m_title_en">My senpai</div>
        <div id="bgm6" class="m_title_en">Absent in the Spring Rain Opver.</div>
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
  <div id="cgbig"></div>
  <div id="cgvideo"><video src="" autoplay id="vcg"></video></div>
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
    $('#chaptertitle').text('Scene 1. Sharing an umbrella');
    $('#summary').text('Haruya and his senpai walk home together under the same umbrella. Before long, Haruya parts ways with her and seems to be alone. However, behind him a huge shadow of a fish creeps upon him.');
    $('#chapbg').attr('src','data/image/scene1.jpg');
  },function(){
});
$('#chapter2').hover(
  function(){
    $('#chaptertitle').text('Scene 2. Date');
    $('#summary').text('In the club room of the literature club. The senpai invites Haruya to go with her to a hydrangea garden. As the two make plans, Haruya talks to senpai about a nation-wide serial murder case.');
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
    $('#chaptertitle').text('Scene 3. Reminiscence/encounter');
    $('#summary').text('Back when Haruya had just entered high school. Haruya, who couldn’t find his place in a school busy recruiting club newcomers, meets a mysterious senpai in an empty classroom.');
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
    $('#chaptertitle').text('Scene 4. Hydrangea garden');
    $('#summary').text('Haruya and Yukino get on a bus and reach the hydrangea garden. The two spend a peaceful and happy time together, until a mysterious shadow appears and attacks Yukino.');
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
    $('#chaptertitle').text('Scene 5. Omen');
    $('#summary').text('A day has passed since the incident in the hydrangea garden. Yukino hasn’t shown up at the club room. Haruya is worried, and on the way home someone speaks in his ear.');
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
    $('#chaptertitle').text('Scene 6. Rain Monster');
    $('#summary').text('Following what the mysterious voice said, Haruya came out the front door at the scheduled time. In front of him appears the rain and shark monster, who tells Haruya something unbelievable about Yukino.');
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
    $('#chaptertitle').text('Scene 7. Conflict');
    $('#summary').text('After hearing the Rain Monster’s story, Haruya can’t make up his mind. He’s alone in the literature club when Yukino and the club president come in.');
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
    $('#chaptertitle').text('Scene 8A. Conclusion');
    $('#summary').text('Haruya is determined to mediate between Yukino and the Rain Monster. However, and unlike anything he expected, Haruya is swallowed by the Rain Monster and used as hostage to hunt down Yukino.');
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
    $('#chaptertitle').text('Scene 9A. Parting');
    $('#summary').text('Haruya and Yukino survive the Rain Monster’s attack. As the time to say goodbye draws near, the two decide to spend time together while following the usual route home under the same umbrella.');
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
    $('#chaptertitle').text('Scene 10A. Epilogue');
    $('#summary').text('Ever since Yukino disappeared, proof of her existence has been erased from the world. Haruya is no exception. However, what he received from his senpai is still alive within him.');
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
    $('#chaptertitle').text('Scene 8B. Face-to-face');
    $('#summary').text('Haruya and Yukino vow to rebel against the Rain Monster. In the temporary impasse, the two decide to spend their remaining time however they wish. The two head to for the hydrangea garden flying through the night.');
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
    $('#chaptertitle').text('Scene 9B. Spider lily');
    $('#summary').text('After arriving at the hydrangea garden, the two spend a peaceful time under the moonlight. They defeat the chasing Rain Monster. They can no longer turn back, so they head to the last place.');
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
    $('#chaptertitle').text('Scene 10B. “ ”');
    $('#summary').text('Haruya and Yukino arrive at the literature club room. They enter through the window, and they exchange their last moments and their last words.');
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
    $('#chaptertitle').text('Extra Scene');
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
@jump storage=scenario_en/title.ks target=*start

