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
<img src="data/bgimage/gallery_bg.jpg" style="z-index:-10;">
<div class="cg_back" style="left:50px;top:650px;position:absolute;cursor:pointer;z-index:10;">
	<img src="data/fgimage/back_system.png" alt="" class="non">
</div>

<div class='tabs'>
  <div class='tab-buttons'>
    <span class='content1' style="margin-left:105px;padding-top:10px;transition: .3s;">章選択</span>
    <span class='content2' style="padding-top:10px;transition: .3s;">画廊</span>
    <span class='content3' style="padding-top:10px;transition: .3s;">音楽</span>
    <div id='lamp' class='content1 lamp'></div>
  </div>
  <div class='tab-content'>
    
    <div class='content1'>
      <img src="data/image/scene1.jpg" style="width:400px;" id="chapbg">
      <div id="chaptertitle">場面1. 相合傘</div>
      <div id="summary">ふたりでひとつの傘に入りながら、ともに帰路を歩む春也と先輩。やがて先輩と別れひとりになる春也だったが、その背後には巨大な魚影が忍び寄っていた。</div>
      <div class="chapterchoice">
        <div id="chapter1" class="chap">場面1.相合傘</div>
        <div id="chapter2" class="chap">場面2.約束</div>
        <div id="chapter3" class="chap">場面3.回想／邂逅</div>
        <div id="chapter4" class="chap">場面4.あじさい園</div>
        <div id="chapter5" class="chap">場面5.予兆</div>
        <div id="chapter6" class="chap">場面6.雨妖</div>
        <div id="chapter7" class="chap">場面7.葛藤</div>
      </div>
      <div class="chapterA">
        <div id="chapter8A" class="chap">場面8A.決着</div>
        <div id="chapter9A" class="chap">場面9A.別れ</div>
        <div id="chapter10A" class="chap">場面10A.エピローグ</div>
      </div>
      <div class="chapterB">
        <div id="chapter8B" class="chap">場面8B.対面</div>
        <div id="chapter9B" class="chap">場面9B.彼岸</div>
        <div id="chapter10B" class="chap">場面10B.「　」</div>
      </div>
      <div id="chapterEX" class="chap" style="position:absolute;top:200px;left:870px;">EX.背中</div>
    </div>
    
    <div class='content2'>
      <div style="float:left;position:absolute;top:-10px;left:40px;">
        <img src="data/bgimage/tonarib.jpg" class="cg" id="tonari">
        <img src="data/bgimage/shadow.jpg" class="cg" id="shadow">
        <img src="data/bgimage/tekubi.jpg" class="cg" id="tekubi">
        <img src="data/bgimage/inthedark.png" class="cg" id="senpai">
        <img src="data/bgimage/vsuyo.png" class="cg" id="vsuyo">
        <img src="data/bgimage/Alast.png" class="cg" id="alast">
        <img src="data/bgimage/white.jpg" class="cg" id="blast">
        <img src="data/bgimage/hug1.jpg" class="cg" id="hug">
      </div>
    </div>
    
    <div class='content3'>
      <audio src="data/bgm/A_ED.ogg" id="audiotag"></audio>
      <div style="position:absolute;left:150px;">
        <div id="bgm1" class="m_title">A_ED</div>
        <div id="bgm2" class="m_title">A_end</div>
        <div id="bgm3" class="m_title">ajisai</div>
        <div id="bgm4" class="m_title">B_ED</div>
        <div id="bgm5" class="m_title">fuon</div>
        <div id="bgm6" class="m_title">kaiwa</div>
        <div id="bgm7" class="m_title">main</div>
      </div>
      <div id="play"><img src="data/image/music3.png" class="act"></div>
	  <div id="time">
  		<span id="current" style="position:absolute;top:265px;left:575px;font-weight:bold;font-size:20px;font-family:applimincho;">00:00</span>
		<span id="duration" style="position:absolute;top:265px;left:995px;font-weight:bold;font-size:20px;font-family:applimincho;">00:00</span>
	  </div>
	  <div id="seekbar" style="position:absolute;top:264px;left:647px;"></div>
	  <img src="data/image/music5.png"  style="position:absolute;left:805px;top:328px;">
	  <input type="range" id="volume" style="position:absolute;top:341px;left:800px;width:200px;height:4px;" value="50" min="0" max="99">
	  <div id="bmusic" style="position:absolute;left:580px;top:326px;cursor:pointer;"><img src="data/image/music2.png"></div>
	  <div id="nmusic" style="position:absolute;left:720px;top:326px;cursor:pointer;"><img src="data/image/music4.png"></div>
	  <img src="data/image/music1.png" style="position:absolute;left:670px;top:-20px;" >
    </div>
    
  </div>
  <div id="cgbig"></div>
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
</script>
[endhtml]

[loadjs storage="cg.js"]
[loadjs storage="music.js"]
[s]



*backtitle
[cm]
[clearfix]
@jump storage=title.ks

