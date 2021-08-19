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
      <img src="data/bgimage/white.jpg" style="width:400px;">
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
      <div id="play"><img src="data/image/music3.png" style="position:absolute;left:650px;top:320px;"></div>
	  <div id="stop" style="display:none;">Stop</div>
	  <div id="time">
  		<span id="current" style="position:absolute;top:265px;left:575px;font-weight:bold;font-size:20px;font-family:applimincho;">00:00</span>
		<span id="duration" style="position:absolute;top:265px;left:980px;font-weight:bold;font-size:20px;font-family:applimincho;">00:00</span>
	  </div>
	  <div id="seekbar" style="position:absolute;top:264px;left:647px;"></div>
	  <img src="data/image/music5.png"  style="position:absolute;left:805px;top:328px;">
	  <input type="range" id="volume" style="position:absolute;top:341px;left:800px;width:200px;height:4px;" value="50" min="0" max="99">
	  <div id="bmusic" style="position:absolute;left:580px;top:326px;cursor:pointer;"><img src="data/image/music2.png"></div>
	  <div id="nmusic" style="position:absolute;left:720px;top:326px;cursor:pointer;"><img src="data/image/music4.png"></div>
	  <img src="data/image/music1.png" style="position:absolute;left:670px;top:-20px;" >
    </div>
    
  </div>
  <img src="data/bgimage/tonarib.jpg" class="cgbig" id="tonari1">
  <div id="cgbig"></div>
</div>
</div>



<script>
var still = "a";
$('#tonari').click(function(){
  $('#cgbig').css({'background-image':'url("data/bgimage/tonarib.jpg")','visibility':'visible'});
  still = "tonarib";
});
$('#shadow').click(function(){
  $('#cgbig').css({'background-image':'url("data/bgimage/shadow.jpg")','visibility':'visible'});
});
$('#tekubi').click(function(){
  $('#cgbig').css({'background-image':'url("data/bgimage/tekubi.jpg")','visibility':'visible'});
});
$('#hug').click(function(){
  $('#cgbig').css({'background-image':'url("data/bgimage/hug1.jpg")','visibility':'visible'});
});

$('#cgbig').click(function(){
  if (still == "tonarib") {
    $('#cgbig').css('background-image','data/bgimage/tonarik.jpg');
    still = "tonarik";
  } else {
    $('#cgbig').css({'background-image':'','visibility':'hidden'});}
});
</script>

<script>
$('.cg_back').click(function(){tyrano.plugin.kag.ftag.startTag("jump", {target:"backtitle"})});
</script>

<script>
var $chapters = $("#chapter1,#chapter2,#chapter3,#chapter4,#chapter5,#chapter6,#chapter7,#chapter8A,#chapter9A,#chapter10A,#chapter8B,#chapter9B,#chapter10B,#chapterEX");
$('#chapter1').click(function(){tyrano.plugin.kag.ftag.startTag("jump",{storage:"title.ks",target:"gamestart"})});
$('#chapter2').click(function(){tyrano.plugin.kag.ftag.startTag("jump",{storage:"scene2.ks",target:"chapter"})});
$('#chapter3').click(function(){tyrano.plugin.kag.ftag.startTag("jump",{storage:"scene3.ks",target:"chapter"})});
$('#chapter4').click(function(){tyrano.plugin.kag.ftag.startTag("jump",{storage:"scene4.ks",target:"chapter"})});
$('#chapter5').click(function(){tyrano.plugin.kag.ftag.startTag("jump",{storage:"scene5.ks",target:"chapter"})});
$('#chapter6').click(function(){tyrano.plugin.kag.ftag.startTag("jump",{storage:"scene6.ks",target:"chapter"})});
$('#chapter7').click(function(){tyrano.plugin.kag.ftag.startTag("jump",{storage:"scene7.ks",target:"chapter"})});
$('#chapter8A').click(function(){tyrano.plugin.kag.ftag.startTag("jump",{storage:"scene8A.ks",target:"chapter"})});
$('#chapter9A').click(function(){tyrano.plugin.kag.ftag.startTag("jump",{storage:"scene9A.ks",target:"chapter"})});
$('#chapter10A').click(function(){tyrano.plugin.kag.ftag.startTag("jump",{storage:"scene10A.ks",target:"chapter"})});
$('#chapter8B').click(function(){tyrano.plugin.kag.ftag.startTag("jump",{storage:"scene8B.ks",target:"chapter"})});
$('#chapter9B').click(function(){tyrano.plugin.kag.ftag.startTag("jump",{storage:"scene9B.ks",target:"chapter"})});
$('#chapter10B').click(function(){tyrano.plugin.kag.ftag.startTag("jump",{storage:"scene10B.ks",target:"chapter"})});
$('#chapterEX').click(function(){tyrano.plugin.kag.ftag.startTag("jump",{storage:"scene-ex.ks",target:"chapter"})});
$('#chapter1').hover(
  function(){
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter1').css('border-left','solid 4px rgba(0,0,0,1)');
    $('#chaptertitle').text('場面1. 相合傘');
    $('#summary').text('ふたりでひとつの傘に入りながら、ともに帰路を歩む春也と先輩。やがて先輩と別れひとりになる春也だったが、その背後には巨大な魚影が忍び寄っていた。');
  },function(){
});
$('#chapter2').hover(
  function(){
    $('#chaptertitle').text('場面2. 約束');
    $('#summary').text('文芸部の部室にて。春也は先輩にあじさい園へと誘われ、一緒に出かけることになる。予定を立てたふたりだったが、春也はそこで先輩に全国連続殺人事件について切り出す。');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter2').css('border-left','solid 4px rgba(0,0,0,1)');
  },function(){
});
$('#chapter3').hover(
  function(){
    $('#chaptertitle').text('場面3. 回想／邂逅');
    $('#summary').text('春也が高校に入学したばかりの頃。部活動勧誘で湧く校内に居場所を見出しかねた春也は、流れ着いた空き教室で不思議な先輩と出会うのだった。');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter3').css('border-left','solid 4px rgba(0,0,0,1)');
  },function(){
});
$('#chapter4').hover(
  function(){
    $('#chaptertitle').text('場面4. あじさい園');
    $('#summary').text('バスに乗ってあじさい園へとやって来た春也たち。平穏で幸福なひと時を過ごすふたりだったが、そこへ現れた謎の影が先輩を強襲する。');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter4').css('border-left','solid 4px rgba(0,0,0,1)');
  },function(){
});
$('#chapter5').hover(
  function(){
    $('#chaptertitle').text('場面5. 予兆');
    $('#summary').text('あじさい園での事件から一日。先輩は部室に現れなかった。不安を抱えながら帰宅する春也だったが、その耳に何者かが語りかけてくる。');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter5').css('border-left','solid 4px rgba(0,0,0,1)');
  },function(){
});
$('#chapter6').hover(
  function(){
    $('#chaptertitle').text('場面6. 雨妖');
    $('#summary').text('謎の声の言う通り、予定の時刻に玄関先へ出た春也。その目の前に雨と鮫の怪物『雨妖』が現れ、先輩について信じがたい言葉を語りだす。');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter6').css('border-left','solid 4px rgba(0,0,0,1)');
  },function(){
});
$('#chapter7').hover(
  function(){
    $('#chaptertitle').text('場面7. 葛藤');
    $('#summary').text('雨妖の話を受けてなお、春也は自分の心を決めかねていた。文芸部の部室でひとり思い悩む春也のもとに、部長と先輩がそれぞれ訪れるのだった。');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter7').css('border-left','solid 4px rgba(0,0,0,1)');
  },function(){
});
$('#chapter8A').hover(
  function(){
    $('#chaptertitle').text('場面8A. 決着');
    $('#summary').text('先輩の様子を見て春也は、雨妖と先輩の間を仲裁しようと決意する。しかし春也の思惑は外れ、雨妖に呑み込まれた挙句、先輩を追い詰めるための材料として使われてしまう。');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter8A').css('border-left','solid 4px rgba(0,0,0,1)');
  },function(){
});
$('#chapter9A').hover(
  function(){
    $('#chaptertitle').text('場面9A. 別れ');
    $('#summary').text('雨妖の攻撃をやり過ごしたふたり。別れの時が迫る中、ふたりは相合傘でいつもの帰り道を辿りながら、ともに時間を過ごすことにした。');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter9A').css('border-left','solid 4px rgba(0,0,0,1)');
  },function(){
});
$('#chapter10A').hover(
  function(){
    $('#chaptertitle').text('場面10A. エピローグ');
    $('#summary').text('先輩が消えて以来、世界からは先輩の存在が失われていった。春也にとってもそれは例外ではない。しかし先輩から貰ったものは、春也の内に確かに息づいているのだった。');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter10A').css('border-left','solid 4px rgba(0,0,0,1)');
  },function(){
});
$('#chapter8B').hover(
  function(){
    $('#chaptertitle').text('場面8B. 対面');
    $('#summary').text('雨妖への反抗を誓い合ったふたり。閉塞した状況の中、ふたりは自分たちの思う通りに過ごすことにする。その第一歩として、ふたりは夜間飛行であじさい園へ向かうのだった。');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter8B').css('border-left','solid 4px rgba(0,0,0,1)');
  },function(){
});
$('#chapter9B').hover(
  function(){
    $('#chaptertitle').text('場面9B. 彼岸');
    $('#summary').text('あじさい園へ降り立ったふたりは、月明かりの下で穏やかな時を過ごす。追ってきた雨妖を撃退し、ついに後へ退けなくなったふたりは、最後の場所へと向かうことにする。');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter9B').css('border-left','solid 4px rgba(0,0,0,1)');
  },function(){
});
$('#chapter10B').hover(
  function(){
    $('#chaptertitle').text('場面10B. 「　」');
    $('#summary').text('ふたりがやって来たのは文芸部の部室だった。窓から中に入ったふたりは、最後の時間と最後の言葉を交わすのだった。');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter10B').css('border-left','solid 4px rgba(0,0,0,1)');
  },function(){
});
$('#chapterEX').hover(
  function(){
    $('#chaptertitle').text('EX. 背中');
    $('#summary').text('');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapterEX').css('border-left','solid 4px rgba(0,0,0,1)');
  },function(){
});
</script>

<script>
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

[loadjs storage="music.js"]
[s]



*backtitle
[cm]
[clearfix]
@jump storage=title.ks

