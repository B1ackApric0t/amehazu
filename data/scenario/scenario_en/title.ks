;[clearvar]
*start
[fadeoutbgm time=10][fadeoutse time=10][skipstop]
[stop_keyconfig]
[if exp="sf.S1==undefined"][eval exp="sf.S1=0"][endif]
[if exp="sf.S2==undefined"][eval exp="sf.S2=0"][endif]
[if exp="sf.S3==undefined"][eval exp="sf.S3=0"][endif]
[if exp="sf.S4==undefined"][eval exp="sf.S4=0"][endif]
[if exp="sf.S5==undefined"][eval exp="sf.S5=0"][endif]
[if exp="sf.S6==undefined"][eval exp="sf.S6=0"][endif]
[if exp="sf.S7==undefined"][eval exp="sf.S7=0"][endif]
[if exp="sf.S8a==undefined"][eval exp="sf.S8a=0"][endif]
[if exp="sf.S9a==undefined"][eval exp="sf.S9a=0"][endif]
[if exp="sf.S10a==undefined"][eval exp="sf.S10a=0"][endif]
[if exp="sf.S8b==undefined"][eval exp="sf.S8b=0"][endif]
[if exp="sf.S9b==undefined"][eval exp="sf.S9b=0"][endif]
[if exp="sf.S10b==undefined"][eval exp="sf.S10b=0"][endif]
[if exp="sf.SX==undefined"][eval exp="sf.SX=0"][endif]
[if exp="sf.Aroot==undefined"][eval exp="sf.Aroot=0"][endif]
[if exp="sf.Broot==undefined"][eval exp="sf.Broot=0"][endif]
[if exp="sf.clear1==undefined"][eval exp="sf.clear1=0"][endif]
[if exp="sf.Bclear==undefined"][eval exp="sf.Bclear=0"][endif]
[if exp="sf._system_config_bgm_volume==undefined"][eval exp="sf._system_config_bgm_volume=20"][endif]

[if exp="sf.ST1==undefined"][eval exp="sf.ST1=0"][endif]
[if exp="sf.ST2==undefined"][eval exp="sf.ST2=0"][endif]
[if exp="sf.ST3==undefined"][eval exp="sf.ST3=0"][endif]
[if exp="sf.ST4==undefined"][eval exp="sf.ST4=0"][endif]
[if exp="sf.ST5==undefined"][eval exp="sf.ST5=0"][endif]
[if exp="sf.ST6==undefined"][eval exp="sf.ST6=0"][endif]
[if exp="sf.ST7==undefined"][eval exp="sf.ST7=0"][endif]
[if exp="sf.ST8==undefined"][eval exp="sf.ST8=0"][endif]
[if exp="sf.SM1==undefined"][eval exp="sf.SM1=0"][endif]
[if exp="sf.SM2==undefined"][eval exp="sf.SM2=0"][endif]
[if exp="sf.SM3==undefined"][eval exp="sf.SM3=0"][endif]


[iscript]
if($.isElectron() || $.isNWJS()){
    //PC
    sf.pc=true;
}
else{
    //ブラウザ
    sf.pc=false;
}
[endscript]

[eval exp="sf.current_bgm_vol=20"]

[if exp="sf.Aroot==1&&sf.Broot==1&&sf.clear1==0"]
[image storage=alert.png layer=0 top=250 left=300]
[l]
[eval exp="sf.clear1=1"]
[freeimage layer=0]
[wait time=1000]
[endif]
[playbgm storage="main_loop.ogg"]
*title
@clearfix
[cm]

@clearstack


[html]
<div id="tl">
<div id="glitch" class="loading">

[if exp="sf.Bclear!=1"]
<img class="img_title" src="data/bgimage/title.jpg" style="z-index:-1;left:-320px;top:-300px;width:1920px;height:2880px;position:absolute;">
[else]
<div class="glitch">
	<div class="glitch__img"></div>
	<div class="glitch__img"></div>
	<div class="glitch__img"></div>
	<div class="glitch__img"></div>
	<div class="glitch__img"></div>
</div></div>
[endif]

<img src="data/fgimage/title_vi.png" style="position:absolute;">

<div class="container">
  <div class="rains">
    <span></span><span></span><span></span><span></span><span></span>
    <span></span><span></span><span></span><span></span><span></span>
    <span></span><span></span><span></span><span></span><span></span>
    <span></span><span></span><span></span><span></span><span></span>
   </div>
</div>

<div id="title_start" class="title_item" style="left:120px;top:340px;position:absolute;cursor:pointer;">
	<img src="data/fgimage/title_start.png" alt="" class="non">
</div>
<div id="title_load" class="title_item" style="left:120px;top:400px;position:absolute;cursor:pointer;">
	<img src="data/fgimage/title_load.png" alt="" class="non">
</div>
<div id="title_config" class="title_item" style="left:120px;top:460px;position:absolute;cursor:pointer;">
	<img src="data/fgimage/title_config.png" alt="" class="non">
</div>
[if exp="sf.S1 == 1"]
<div id="title_gallery" class="title_item" style="left:120px;top:520px;position:absolute;cursor:pointer;">
	<img src="data/fgimage/title_gallery.png" alt="" class="non">
</div>
[else]
<div style="left:120px;top:520px;position:absolute;cursor:pointer;opacity:0.5;">
	<img src="data/fgimage/title_gallery.png" alt="" class="non">
</div>
[endif]
<div id="title_quit" class="title_item" style="left:120px;top:580px;position:absolute;cursor:pointer;">
	<img src="data/fgimage/title_quit.png" alt="" class="non">
</div>

<div id="title_trans" style="left:120px;top:80px;position:absolute;cursor:pointer;">
	<img src="data/fgimage/language.png" alt="" class="non">
</div>

<img src="data/fgimage/title_d10rama.png" style="left:1050px;top:50px;position:absolute;" class="jumpHP">
<img src="data/fgimage/title_logo.png" style="left:860px;top:440px;position:absolute;">
</div>

<style>
.img_title{
  transition: transform 0.2s, top, 0.4s, left 0.4s;
  transition-timing-function: ease-out;
}
</style>

<script>
$('#title_start').click(function(){tyrano.plugin.kag.ftag.startTag("jump",{target:"gamestart"})});
$('#title_load').click(function(){tyrano.plugin.kag.ftag.startTag("showload")});
$('#title_config').click(function(){tyrano.plugin.kag.ftag.startTag("showconfig")});
$('#title_gallery').click(function(){tyrano.plugin.kag.ftag.startTag("jump",{storage:"cg.ks",target:"start"})});
$('#title_quit').click(function(){tyrano.plugin.kag.ftag.startTag("close")});


$("#title_trans").click(function(){tyrano.plugin.kag.ftag.startTag("jump",{storage:"trans.ks",target:"start"})});


[if exp="sf.Bclear!=1"]
$('#tl').mousemove(function(e){
  if(e.pageX > 640){
  $('.img_title').css({"left":-280 - e.pageX/16,"top":-300 - e.pageY/8});
  } else if(e.pageX < 640){
  $('.img_title').css({"left":-280 - e.pageX/16,"top":-300 - e.pageY/8});
  } else{
  $('.img_title').css({"top":-300 - e.pageY/8});
  }
});
[else]
$('#tl').mousemove(function(e){
  if(e.pageX > 640){
  $('.glitch').css({"left":-280 - e.pageX/16,"top":-300 - e.pageY/8});
  } else if(e.pageX < 640){
  $('.glitch').css({"left":-280 - e.pageX/16,"top":-300 - e.pageY/8});
  } else{
  $('.glitch').css({"top":-300 - e.pageY/8});
  }
});
[endif]
</script>
[endhtml]


[s]


*gamestart

[html]
<img src="data/bgimage/black.png" class="fadein">
[endhtml]
[wait time=1000]

@jump storage="scenario_en/scene1.ks"

[s]


