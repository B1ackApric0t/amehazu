;=========================================
; CG モード　画面作成
;=========================================
*start
[fadeoutbgm time=10]
@layopt layer=message0 visible=false

@clearfix
[cm]


[html]
<div class="fadein">
<img src="data/bgimage/load_bg.png" style="z-index:-10;">
<img src="data/image/savetop.png" style="left:70px;top:50px;position:absolute;">
<div class="cg_back" style="left:50px;top:670px;position:absolute;cursor:pointer;z-index:10;">
	<img src="data/fgimage/back_system.png" alt="" class="non">
</div>

<div class='tabs'>
  <div class='tab-buttons'>
    <span class='content1' style="margin-left:105px;">章選択</span>
    <span class='content2'>画廊</span>
    <span class='content3'>音楽</span>
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
      <div id="chapterEX" style="position:absolute;top:200px;left:870px;font-size:20px;font-family:applimincho;cursor:pointer;">EX.背中</div>
    </div>
    
    <div class='content2'>スチル</div>
    
    <div class='content3'>音楽</div>
    
  </div>
</div>



<script>
$('.cg_back').click(function(){tyrano.plugin.kag.ftag.startTag("jump", {target:"backtitle"})});
</script>


<script>
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
    $('#chaptertitle').text('場面1. 相合傘');
    $('#summary').text('ふたりでひとつの傘に入りながら、ともに帰路を歩む春也と先輩。やがて先輩と別れひとりになる春也だったが、その背後には巨大な魚影が忍び寄っていた。');
  },function(){
});
$('#chapter2').hover(
  function(){
    $('#chaptertitle').text('場面2. 約束');
    $('#summary').text('文芸部の部室にて。春也は先輩にあじさい園へと誘われ、一緒に出かけることになる。予定を立てたふたりだったが、春也はそこで先輩に全国連続殺人事件について切り出す。');
  },function(){
});
$('#chapter3').hover(
  function(){
    $('#chaptertitle').text('場面3. 回想／邂逅');
    $('#summary').text('春也が高校に入学したばかりの頃。部活動勧誘で湧く校内に居場所を見出しかねた春也は、流れ着いた空き教室で不思議な先輩と出会うのだった。');
  },function(){
});
$('#chapter4').hover(
  function(){
    $('#chaptertitle').text('場面4. あじさい園');
    $('#summary').text('バスに乗ってあじさい園へとやって来た春也たち。平穏で幸福なひと時を過ごすふたりだったが、そこへ現れた謎の影が先輩を強襲する。');
  },function(){
});
$('#chapter5').hover(
  function(){
    $('#chaptertitle').text('場面5. 予兆');
    $('#summary').text('あじさい園での事件から一日。先輩は部室に現れなかった。不安を抱えながら帰宅する春也だったが、その耳に何者かが語りかけてくる。');
  },function(){
});
$('#chapter6').hover(
  function(){
    $('#chaptertitle').text('場面6. 雨妖');
    $('#summary').text('謎の声の言う通り、予定の時刻に玄関先へ出た春也。その目の前に雨と鮫の怪物『雨妖』が現れ、先輩について信じがたい言葉を語りだす。');
  },function(){
});
$('#chapter7').hover(
  function(){
    $('#chaptertitle').text('場面7. 葛藤');
    $('#summary').text('雨妖の話を受けてなお、春也は自分の心を決めかねていた。文芸部の部室でひとり思い悩む春也のもとに、部長と先輩がそれぞれ訪れるのだった。');
  },function(){
});
$('#chapter8A').hover(
  function(){
    $('#chaptertitle').text('場面8A. 決着');
    $('#summary').text('先輩の様子を見て春也は、雨妖と先輩の間を仲裁しようと決意する。しかし春也の思惑は外れ、雨妖に呑み込まれた挙句、先輩を追い詰めるための材料として使われてしまう。');
  },function(){
});
$('#chapter9A').hover(
  function(){
    $('#chaptertitle').text('場面9A. 別れ');
    $('#summary').text('雨妖の攻撃をやり過ごしたふたり。別れの時が迫る中、ふたりは相合傘でいつもの帰り道を辿りながら、ともに時間を過ごすことにした。');
  },function(){
});
$('#chapter10A').hover(
  function(){
    $('#chaptertitle').text('場面10A. エピローグ');
    $('#summary').text('先輩が消えて以来、世界からは先輩の存在が失われていった。春也にとってもそれは例外ではない。しかし先輩から貰ったものは、春也の内に確かに息づいているのだった。');
  },function(){
});
$('#chapter8B').hover(
  function(){
    $('#chaptertitle').text('場面8B. 対面');
    $('#summary').text('雨妖への反抗を誓い合ったふたり。閉塞した状況の中、ふたりは自分たちの思う通りに過ごすことにする。その第一歩として、ふたりは夜間飛行であじさい園へ向かうのだった。');
  },function(){
});
$('#chapter9B').hover(
  function(){
    $('#chaptertitle').text('場面9B. 彼岸');
    $('#summary').text('あじさい園へ降り立ったふたりは、月明かりの下で穏やかな時を過ごす。追ってきた雨妖を撃退し、ついに後へ退けなくなったふたりは、最後の場所へと向かうことにする。');
  },function(){
});
$('#chapter10B').hover(
  function(){
    $('#chaptertitle').text('場面10B. 「　」');
    $('#summary').text('ふたりがやって来たのは文芸部の部室だった。窓から中に入ったふたりは、最後の時間と最後の言葉を交わすのだった。');
  },function(){
});
$('#chapterEX').hover(
  function(){
    $('#chaptertitle').text('EX. 背中');
    $('#summary').text('');
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
[s]



*backtitle
[cm]
[clearfix]
@jump storage=title.ks

