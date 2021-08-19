[fadeoutbgm time=10]

*start

*title
@clearfix
[cm]

@clearstack
[playbgm storage="main_loop.ogg"]


[html]
<div id="tl">
<img class="img_title" src="data/bgimage/title.jpg" style="z-index:-1;left:-320px;top:-300px;width:1920px;height:2880px;position:absolute;">

;<div class="container">
;  <div class="rains">
;    <span></span><span></span><span></span><span></span><span></span>
;    <span></span><span></span><span></span><span></span><span></span>
;    <span></span><span></span><span></span><span></span><span></span>
;    <span></span><span></span><span></span><span></span><span></span>
;   </div>
;</div>

<div id="title_start" class="title_item" style="left:120px;top:340px;position:absolute;cursor:pointer;">
	<img src="data/fgimage/title_start.png" alt="" class="non">
</div>
<div id="title_load" class="title_item" style="left:120px;top:400px;position:absolute;cursor:pointer;">
	<img src="data/fgimage/title_load.png" alt="" class="non">
</div>
<div id="title_config" class="title_item" style="left:120px;top:460px;position:absolute;cursor:pointer;">
	<img src="data/fgimage/title_config.png" alt="" class="non">
</div>
<div id="title_gallery" class="title_item" style="left:120px;top:520px;position:absolute;cursor:pointer;">
	<img src="data/fgimage/title_gallery.png" alt="" class="non">
</div>
<div id="title_quit" class="title_item" style="left:120px;top:580px;position:absolute;cursor:pointer;">
	<img src="data/fgimage/title_quit.png" alt="" class="non">
</div>


<img src="data/fgimage/title_d10rama.png" style="left:1050px;top:50px;position:absolute;cursor:pointer;" class="jumpHP">
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
$('.jumpHP').click(function(){tyrano.plugin.kag.ftag.startTag("jump",{target:"HP"})});

$('#tl').mousemove(function(e){
  if(e.pageX > 640){
  $('.img_title').css({"left":-280 - e.pageX/16,"top":-300 - e.pageY/8});
  } else if(e.pageX < 640){
  $('.img_title').css({"left":-280 - e.pageX/16,"top":-300 - e.pageY/8});
  } else{
  $('.img_title').css({"top":-300 - e.pageY/8});
  }
});

</script>
[endhtml]


[s]


*gamestart

[html]
<img src="data/bgimage/black.png" class="fadein">
[endhtml]
[wait time=1500]

@jump storage="scene1.ks"

*HP
[iscript]
window.open("https://d10rama.com/");
[endscript]
@jump target=title
[cm]
[s]


