;-------------------
; MUSICモード
;-------------------
*start
[fadeoutbgm time=10]

@layopt layer=message0 visible=false

@clearfix
[hidemenubutton]
[cm]

[macro name="pause_bgm"]
 [iscript]
 if(f.pause_bgm === undefined){
  	f.pause_bgm = {
  		is_pause = false
  	}
 }
 var buf = 0
 if(mp.buf === undefined || mp.buf === "" || mp.buf === null){
     buf = 0
 }else{
     buf = mp.buf
 }
 var audio = tyrano.plugin.kag.tmp.map_bgm[buf]
 audio.pause()
 f.pause_bgm.is_pause = true
 [endscript]
 [endmacro]

[bg storage="../../tyrano/images/system/music_bg.png" time=100]
[layopt layer=1 visible=true]

[html]
<ul class="music_back menu_item title_back" style="left:80px;top:550px;position:absolute;">
	<li class="arow">➡</li> 
	<li class="english back_text">Back</li>
</ul>
<div style="color:#8D8D8D;font-size:30px;font-weight:bold;" >
<div style="left:620px;top:105px;position:absolute;width:500px;" class="musictext" id="hitoyane">1. ひとつ屋根の下なのに</div>
<div style="left:620px;top:153px;position:absolute;width:500px" class="musictext" id="anone">2. あのね？</div>
<div style="left:620px;top:201px;position:absolute;width:500px" class="musictext" id="nanikao">3. なに買お？</div>
<div style="left:620px;top:249px;position:absolute;width:500px" class="musictext" id="ho">4. ほっ…</div>
<div style="left:620px;top:297px;position:absolute;width:500px" class="musictext" id="sonna">5. そんな！</div>
<div style="left:620px;top:345px;position:absolute;width:500px" class="musictext" id="moyamoya">6. もやもや</div>
<div style="left:620px;top:393px;position:absolute;width:500px" class="musictext" id="epi">7. エピローグ</div>
<div style="left:620px;top:441px;position:absolute;width:500px" class="musictext" id="pro">8. プロローグ</div>



;<img src="tyrano/images/system/pause.png" id="music_pause" style="left:660px;top:590px;position:absolute;" class="audio">
;<img src="tyrano/images/system/prev.png" style="left:600px;top:590px;position:absolute;" class="audio">
;<img src="tyrano/images/system/next.png" style="left:720px;top:590px;position:absolute;" class="audio">
;<img src="tyrano/images/system/volume.png" style="left:800px;top:595px;position:absolute;" class="audio">
<div id="music_pause" style="left:580px;top:565px;position:absolute;color:#666666;font-size:40px;" class="audio sika"><p style="margin-top:1px;">■<p></div>

<div id="music_title" style="left:630px;top:565px;position:absolute;color:#666666;font-size:32px;width:400px;hight:40px;text-align:center;letter-spacing: 0.05em;font-family: NotoLite;"><p></p></div>

</div>
<script>
$('.title_back').click(function(){tyrano.plugin.kag.ftag.startTag("jump", {target:"backtitle"})});
$('#hitoyane').click(function(){tyrano.plugin.kag.ftag.startTag("playbgm", {storage:"BGM1.ogg",loop:true,click:true}),$('#music_title:first p').text('ひとつ屋根の下なのに')});
$('#anone').click(function(){tyrano.plugin.kag.ftag.startTag("playbgm", {storage:"BGM2.ogg",loop:true,click:true}),$('#music_title:first p').text('あのね？')});
$('#nanikao').click(function(){tyrano.plugin.kag.ftag.startTag("playbgm", {storage:"BGM3.ogg",loop:true,click:true}),$('#music_title:first p').text('なに買お？')});
$('#ho').click(function(){tyrano.plugin.kag.ftag.startTag("playbgm", {storage:"BGM4.ogg",loop:true,click:true}),$('#music_title:first p').text('ほっ…')});
$('#sonna').click(function(){tyrano.plugin.kag.ftag.startTag("playbgm", {storage:"BGM5.ogg",loop:true,click:true}),$('#music_title:first p').text('そんな！')});
$('#moyamoya').click(function(){tyrano.plugin.kag.ftag.startTag("playbgm", {storage:"BGM6.ogg",loop:true,click:true}),$('#music_title:first p').text('もやもや')});
$('#epi').click(function(){tyrano.plugin.kag.ftag.startTag("playbgm", {storage:"ED.ogg",loop:true,click:true}),$('#music_title:first p').text('エピローグ')});
$('#pro').click(function(){tyrano.plugin.kag.ftag.startTag("playbgm", {storage:"OP.ogg",loop:true,click:true}),$('#music_title:first p').text('プロローグ')});
$('#music_pause').click(function(){tyrano.plugin.kag.ftag.startTag("stopbgm")});

;$('#hitoyane').click(function(){$('#music_title:first p').text('ひとつ屋根の下なのに')});

</script>
[endhtml]


[s]
*backtitle
[cm]
[freeimage layer=1]
@jump storage=title.ks
