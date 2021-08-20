var still = 1;

$('#tonari').click(function(){
  still = 2;
  $('#cgbig').css({'background-image':'url("data/bgimage/tonarib.jpg")','visibility':'visible'});
});
$('#shadow').click(function(){
  still = 3;
  $('#cgbig').css({'background-image':'url("data/bgimage/shadow.jpg")','visibility':'visible'});
});
$('#tekubi').click(function(){
  still = 4;
  $('#cgbig').css({'background-image':'url("data/bgimage/tekubi.jpg")','visibility':'visible'});
});
$('#senpai').click(function(){
  $('#cgbig').css({'background-image':'url("data/bgimage/te.jpg")','visibility':'visible'});
});
$('#hug').click(function(){
  still = 8;
  $('#cgbig').css({'background-image':'url("data/bgimage/hug1.jpg")','visibility':'visible'});
});

$('#cgbig').click(function(){
  if (still == 2) {
    $('#cgbig').css('background-image','url("data/bgimage/tonarik.jpg")');
    still = 21;
  } else if (still == 21) {
    $('#cgbig').css('background-image','url("data/bgimage/tonarimono.jpg")');
    still = 22;
    } else if (still == 22) {
    $('#cgbig').css('background-image','url("data/bgimage/tonarimu.jpg")');
    still = 23;
    } else if (still == 23) {
    $('#cgbig').css('background-image','url("data/bgimage/tonarib_n.jpg")');
    still = 24;
  } else if (still == 24) {
    $('#cgbig').css('background-image','url("data/bgimage/tonariemi_n.jpg")');
    still = 25;
  } else if (still == 25) {
    $('#cgbig').css('background-image','url("data/bgimage/tonarik_n.jpg")');
    still = 26;
  } else if (still == 27) {
    $('#cgbig').css('background-image','url("data/bgimage/tonarime_n.jpg")');
    still = 1;
  } else if (still == 3) {
    $('#cgbig').css('background-image','url("data/bgimage/shadow1.jpg")');
    still = 31;
  } else if (still == 31) {
    $('#cgbig').css('background-image','url("data/bgimage/shadow2.jpg")');
    still = 1;
  } else if (still == 4) {
    $('#cgbig').css('background-image','url("data/bgimage/tekubi2.jpg")');
    still = 41;
  } else if (still == 41) {
    $('#cgbig').css('background-image','url("data/bgimage/tekubi3.jpg")');
    still = 1;
  } else if (still == 8) {
    $('#cgbig').css('background-image','url("data/bgimage/hug2.jpg")');
    still = 81;
  } else if (still == 81) {
    $('#cgbig').css('background-image','url("data/bgimage/hug3.jpg")');
    still = 82;
  } else if (still == 82) {
    $('#cgbig').css('background-image','url("data/bgimage/hug4.jpg")');
    still = 1;
  } else {
    $('#cgbig').css({'background-image':'','visibility':'hidden'});}
});



$("#cgbig").bind('contextmenu', function() {
  still = 1;
  $(this).css({'background-image':'','visibility':'hidden'});

  return false;
});


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
$('#chapterEX').click(function(){tyrano.plugin.kag.ftag.startTag("jump",{storage:"sceneex.ks",target:"chapter"})});
$('#chapter1').hover(
  function(){
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter1').css('border-left','solid 4px rgba(0,0,0,1)');
    $('#chaptertitle').text('場面1. 相合傘');
    $('#chapbg').attr('src','data/image/scene1.jpg');
    $('#summary').text('ふたりでひとつの傘に入りながら、ともに帰路を歩む春也と先輩。やがて先輩と別れひとりになる春也だったが、その背後には巨大な魚影が忍び寄っていた。');
  },function(){
});
$('#chapter2').hover(
  function(){
    $('#chaptertitle').text('場面2. 約束');
    $('#chapbg').attr('src','data/image/scene2.jpg');
    $('#summary').text('文芸部の部室にて。春也は先輩にあじさい園へと誘われ、一緒に出かけることになる。予定を立てたふたりだったが、春也はそこで先輩に全国連続殺人事件について切り出す。');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter2').css('border-left','solid 4px rgba(0,0,0,1)');
  },function(){
});
$('#chapter3').hover(
  function(){
    $('#chaptertitle').text('場面3. 回想／邂逅');
    $('#chapbg').attr('src','data/image/scene3.jpg');
    $('#summary').text('春也が高校に入学したばかりの頃。部活動勧誘で湧く校内に居場所を見出しかねた春也は、流れ着いた空き教室で不思議な先輩と出会うのだった。');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter3').css('border-left','solid 4px rgba(0,0,0,1)');
  },function(){
});
$('#chapter4').hover(
  function(){
    $('#chaptertitle').text('場面4. あじさい園');
    $('#chapbg').attr('src','data/image/scene4.jpg');
    $('#summary').text('バスに乗ってあじさい園へとやって来た春也たち。平穏で幸福なひと時を過ごすふたりだったが、そこへ現れた謎の影が先輩を強襲する。');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter4').css('border-left','solid 4px rgba(0,0,0,1)');
  },function(){
});
$('#chapter5').hover(
  function(){
    $('#chaptertitle').text('場面5. 予兆');
    $('#chapbg').attr('src','data/image/scene5.jpg');
    $('#summary').text('あじさい園での事件から一日。先輩は部室に現れなかった。不安を抱えながら帰宅する春也だったが、その耳に何者かが語りかけてくる。');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter5').css('border-left','solid 4px rgba(0,0,0,1)');
  },function(){
});
$('#chapter6').hover(
  function(){
    $('#chaptertitle').text('場面6. 雨妖');
    $('#chapbg').attr('src','data/image/scene6.jpg');
    $('#summary').text('謎の声の言う通り、予定の時刻に玄関先へ出た春也。その目の前に雨と鮫の怪物『雨妖』が現れ、先輩について信じがたい言葉を語りだす。');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter6').css('border-left','solid 4px rgba(0,0,0,1)');
  },function(){
});
$('#chapter7').hover(
  function(){
    $('#chaptertitle').text('場面7. 葛藤');
    $('#chapbg').attr('src','data/image/scene7.jpg');
    $('#summary').text('雨妖の話を受けてなお、春也は自分の心を決めかねていた。文芸部の部室でひとり思い悩む春也のもとに、部長と先輩がそれぞれ訪れるのだった。');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter7').css('border-left','solid 4px rgba(0,0,0,1)');
  },function(){
});
$('#chapter8A').hover(
  function(){
    $('#chaptertitle').text('場面8A. 決着');
    $('#chapbg').attr('src','data/image/scene8a.jpg');
    $('#summary').text('先輩の様子を見て春也は、雨妖と先輩の間を仲裁しようと決意する。しかし春也の思惑は外れ、雨妖に呑み込まれた挙句、先輩を追い詰めるための材料として使われてしまう。');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter8A').css('border-left','solid 4px rgba(0,0,0,1)');
  },function(){
});
$('#chapter9A').hover(
  function(){
    $('#chaptertitle').text('場面9A. 別れ');
    $('#chapbg').attr('src','data/image/scene9a.jpg');
    $('#summary').text('雨妖の攻撃をやり過ごしたふたり。別れの時が迫る中、ふたりは相合傘でいつもの帰り道を辿りながら、ともに時間を過ごすことにした。');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter9A').css('border-left','solid 4px rgba(0,0,0,1)');
  },function(){
});
$('#chapter10A').hover(
  function(){
    $('#chaptertitle').text('場面10A. エピローグ');
    $('#chapbg').attr('src','data/image/scene10a.jpg');
    $('#summary').text('先輩が消えて以来、世界からは先輩の存在が失われていった。春也にとってもそれは例外ではない。しかし先輩から貰ったものは、春也の内に確かに息づいているのだった。');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter10A').css('border-left','solid 4px rgba(0,0,0,1)');
  },function(){
});
$('#chapter8B').hover(
  function(){
    $('#chaptertitle').text('場面8B. 対面');
    $('#chapbg').attr('src','data/image/scene8b.jpg');
    $('#summary').text('雨妖への反抗を誓い合ったふたり。閉塞した状況の中、ふたりは自分たちの思う通りに過ごすことにする。その第一歩として、ふたりは夜間飛行であじさい園へ向かうのだった。');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter8B').css('border-left','solid 4px rgba(0,0,0,1)');
  },function(){
});
$('#chapter9B').hover(
  function(){
    $('#chaptertitle').text('場面9B. 彼岸');
    $('#chapbg').attr('src','data/image/scene9b.jpg');
    $('#summary').text('あじさい園へ降り立ったふたりは、月明かりの下で穏やかな時を過ごす。追ってきた雨妖を撃退し、ついに後へ退けなくなったふたりは、最後の場所へと向かうことにする。');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter9B').css('border-left','solid 4px rgba(0,0,0,1)');
  },function(){
});
$('#chapter10B').hover(
  function(){
    $('#chaptertitle').text('場面10B. 「　」');
    $('#chapbg').attr('src','data/image/scene10b.jpg');
    $('#summary').text('ふたりがやって来たのは文芸部の部室だった。窓から中に入ったふたりは、最後の時間と最後の言葉を交わすのだった。');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapter10B').css('border-left','solid 4px rgba(0,0,0,1)');
  },function(){
});
$('#chapterEX').hover(
  function(){
    $('#chaptertitle').text('EX. 背中');
    $('#chapbg').attr('src','data/image/scene_ex.jpg');
    $('#summary').text('');
    $chapters.css('border-left','solid 4px rgba(0,0,0,0)');
    $('#chapterEX').css('border-left','solid 4px rgba(0,0,0,1)');
  },function(){
});
