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
<img src="data/image/ch/gallery_bg.png" style="z-index:-10;">
<div class="cg_back" style="left:50px;top:650px;position:absolute;cursor:pointer;z-index:10;">
	<img src="data/image/ch/back.png" alt="" class="non">
</div>

<div class='tabs'>
  <div class='tab-buttons'>
    <span class='content1' style="font-family:NotoCJK;font-weight:normal;margin-left:105px;padding-top:10px;transition: .3s;">选择章节</span>
    <span class='content2' style="font-family:NotoCJK;font-weight:normal;padding-top:10px;transition: .3s;">画廊</span>
    [if exp="sf.Aroot == 1 && sf.Broot == 1"]
    <span class='content3' style="font-family:NotoCJK;font-weight:normal;padding-top:10px;transition:.3s;">音乐</span>
    [else]
    <span style="font-family:NotoCJK;padding-top:10px;transition:.3s;opacity:0.5;pointer-events: none;">音乐</span>
    [endif]
    <div id='lamp' class='content1 lamp'></div>
  </div>
  <div class='tab-content'>
    
    <div class='content1'>
      <img src="data/image/scene1.jpg" style="width:400px;" id="chapbg">
      <div id="chaptertitle" style="font-family:NotoCJK;">场景1. 情侣伞</div>
      <div id="summary" style="font-family:NotoCJK;">共撑一把雨伞，并肩走在归家路上的春也和学姐。在和学姐分别以后只剩孤身一人的春也身后，一个巨大的鱼影悄然靠近。</div>
      <div class="chapterchoice">
        <div id="chapter1" class="chap_ch">场景1. 情侣伞</div>
        [if exp="sf.S2 == 1"]
        <div id="chapter2" class="chap_ch">场景2. 约定</div>
        [else][endif]
        [if exp="sf.S3 == 1"]
        <div id="chapter3" class="chap_ch">场景3. 追忆／邂逅</div>
        [else][endif]
        [if exp="sf.S4 == 1"]
        <div id="chapter4" class="chap_ch">场景4. 绣球花园</div>
        [else][endif]
        [if exp="sf.S5 == 1"]
        <div id="chapter5" class="chap_ch">场景5. 预兆</div>
        [else][endif]
        [if exp="sf.S6 == 1"]
        <div id="chapter6" class="chap_ch">场景6. 雨妖</div>
        [else][endif]
        [if exp="sf.S7 == 1"]
        <div id="chapter7" class="chap_ch">场景7. 纠葛</div>
        [else][endif]
      </div>
      <div class="chapterA">
        [if exp="sf.S8a == 1"]
        <div id="chapter8A" class="chap_ch">场景8A. 了结</div>
        [else][endif]
        [if exp="sf.S9a == 1"]
        <div id="chapter9A" class="chap_ch">场景9A. 诀别</div>
        [else][endif]
        [if exp="sf.S10a == 1"]
        <div id="chapter10A" class="chap_ch">场景10A. 终幕</div>
        [else][endif]
      </div>
      <div class="chapterB">
        [if exp="sf.S8b == 1"]
        <div id="chapter8B" class="chap_ch">场景8B. 会面</div>
        [else][endif]
        [if exp="sf.S9b == 1"]
        <div id="chapter9B" class="chap_ch">场景9B. 彼岸</div>
        [else][endif]
        [if exp="sf.S10b == 1"]
        <div id="chapter10B" class="chap_ch">场景10B. 「　」</div>
        [else][endif]
      </div>
      [if exp="sf.Aroot == 1 && sf.Broot == 1"]
      <div id="chapterEX" class="chap_ch" style="position:absolute;top:200px;left:870px;">EX. 后背</div>
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
        <div id="bgm1" class="m_title_ch">雨にして人を外れ</div>
        <div id="bgm2" class="m_title_ch">日常对话</div>
        <div id="bgm3" class="m_title_ch">绣球花园</div>
        <div id="bgm4" class="m_title_ch">雨妖</div>
        <div id="bgm5" class="m_title_ch">我的学姐</div>
        <div id="bgm6" class="m_title_ch">雨にして人を外れOPver.</div>
        <div id="bgm7" class="m_title_ch">外界的光芒</div>
        <div id="bgm8" class="m_title_ch">直入心坎</div>
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
    $('#chaptertitle').text('场景1. 情侣伞');
    $('#summary').text('共撑一把雨伞，并肩走在归家路上的春也和学姐。在和学姐分别以后只剩孤身一人的春也身后，一个巨大的鱼影悄然靠近。');
    $('#chapbg').attr('src','data/image/scene1.jpg');
  },function(){
});
$('#chapter2').hover(
  function(){
    $('#chaptertitle').text('场景2. 约定');
    $('#summary').text('文艺部的活动室内。受到学姐的邀请，春也答应与她一同前往绣球花园。在制定出行计划之时，春也向学姐提起了近期发生于全国各地的连续凶杀案。');
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
    $('#chaptertitle').text('场景3. 追忆／邂逅');
    $('#summary').text('正值春也升入高中，刚开学之时。校内因学部招新而人声沸腾，无法在其中找到容身之处的春也在彷徨中最终来到一间空置的教室，然后在这里遇到一位超脱尘世的学姐。');
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
    $('#chaptertitle').text('场景4. 绣球花园');
    $('#summary').text('乘着公交车来到绣球花园的春也和学姐。就在二人享受和平而幸福的一刻之时，突然出现一个神秘的影子向学姐发起了攻击。');
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
    $('#chaptertitle').text('场景5. 预兆');
    $('#summary').text('在绣球花园发生突发事件后的第二天。学姐并没有于学部活动室现身。就在心怀不安的春也动身放学回家之时，一个不知名的人物在他的耳边细语。');
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
    $('#chaptertitle').text('场景6. 雨妖');
    $('#summary').text('按照那个神秘声音所说，春也在约定的时间走出玄关。出现在他面前是绵绵的阴雨和鲨鱼怪物『雨妖』。它向春也说出一些关于学姐的事情，内容光怪陆离，令人难以置信。');
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
    $('#chaptertitle').text('场景7. 纠葛');
    $('#summary').text('尽管认同雨妖的说话，但春也还是无法下定决心。就在他单独一人在文艺部的活动室烦恼之际，部长和学姐轮番出现。');
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
    $('#chaptertitle').text('场景8A. 了结');
    $('#summary').text('看到学姐的那番态度后，春也决定从中说和，调解雨妖和学姐之间的矛盾。但事不遂人愿，春也被雨妖吞入口中，成为雨妖用作要挟学姐的人质。');
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
    $('#chaptertitle').text('场景9A. 诀别');
    $('#summary').text('两人好不容易抵挡住雨妖攻击。分别近在眼前，二人再次共撑一伞，漫步于平日的归家路上，静静地共度最后的相处时光。');
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
    $('#chaptertitle').text('场景10A. 终幕');
    $('#summary').text('随着学姐的消失，学姐曾存在于这个世界的痕迹也随之消失。春也记忆中的学姐也毫不例外地消逝了。但学姐给予的一切，却依然确确实实地存在于春也的心中。');
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
    $('#chaptertitle').text('场景8B. 会面');
    $('#summary').text('两人誓言共同对抗雨妖。在信息闭塞的状况之下，两人决定按照自己的意愿度过这段时间。而第一件要做的事，就是在夜间飞行前往绣球花园。');
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
    $('#chaptertitle').text('场景9B. 彼岸');
    $('#summary').text('二人降落于绣球花园内，在月光之下度过了宁静的时刻。击退追踪而至的雨妖后，终于被逼入穷途末路的两人决定前往最后的那个地方。');
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
    $('#chaptertitle').text('场景10B. 「　」');
    $('#summary').text('两人最终来到的地方是文艺部活动室。从窗户进入室内的两人共度最后的时光，赠予对方最后的话语。');
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
    $('#chaptertitle').text('EX. 后背');
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
[loadjs storage="cg_ch.js"]
[s]



*backtitle
[cm]
[clearfix]
@jump storage=scenario_ch/title.ks target=*start

