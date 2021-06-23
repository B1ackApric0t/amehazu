;=========================================
; CG モード　画面作成
;=========================================
*start
[fadeoutbgm time=10]
@layopt layer=message0 visible=false

@clearfix
[cm]

[bg storage="../../tyrano/images/system/gallery_bg.png" time=100]


[html]
<ul class="music_back cg_back" style="left:80px;top:550px;position:absolute;">
	<li class="arow">➡</li> 
	<li class="back_text english">Back</li>
</ul>

<img src="data/bgimage/cg_manami.png" id="cg1" class="cg" style="left:530px;top:140px;position:absolute;" width="250">
<img src="data/bgimage/cg_kata.png" id="cg2" class="cg" style="left:830px;top:140px;position:absolute;" width="250">
<img src="data/bgimage/cg_dash.png" id="cg3" class="cg" style="left:530px;top:320px;position:absolute;" width="250">
<img src="data/bgimage/title_bg.png" id="cg4" class="cg" style="left:830px;top:320px;position:absolute;" width="250">
<img src="data/bgimage/title_after.png" id="cg5" class="cg" width="250" style="left:530px;top:500px;position:absolute;">
<img src="data/bgimage/title_after.png" id="cg6" class="cg" width="250" style="left:830px;top:500px;position:absolute;">
<div class="try" style="left:610px;top:520px;position:absolute;font-size:80px;color:#fff;">▶</div>
<div class="try" style="left:910px;top:340px;position:absolute;font-size:80px;color:#fff;">▶</div>
<div class="try" style="left:910px;top:520px;position:absolute;font-size:80px;color:#fff;">▶</div>
<script>
$('.cg_back').click(function(){tyrano.plugin.kag.ftag.startTag("jump", {target:"backtitle"})});
$('#cg1').click(function(){tyrano.plugin.kag.ftag.startTag("jump", {target:"cg1"})});
$('#cg2').click(function(){tyrano.plugin.kag.ftag.startTag("jump", {target:"cg3"})});
$('#cg3').click(function(){tyrano.plugin.kag.ftag.startTag("jump", {target:"cg4"})});
$('#cg4').click(function(){tyrano.plugin.kag.ftag.startTag("jump", {target:"movie1"})});
$('#cg5').click(function(){tyrano.plugin.kag.ftag.startTag("jump", {target:"movie2"})});
$('#cg6').click(function(){tyrano.plugin.kag.ftag.startTag("jump", {target:"movie3"})});
</script>
[endhtml]
[s]

*movie1
@clearfix
[cm]
[movie storage="OP.mp4" volume="50" skip="true"]
@jump target="start"
[s]

*movie2
@clearfix
[cm]
[movie storage="ED1.mp4" volume="50" skip="true"]
@jump target="start"
[s]

*movie3
@clearfix
[cm]
[movie storage="ED2.mp4" volume="50" skip="true"]
@jump target="start"
[s]


*backtitle
[cm]
[freeimage layer=1]
@jump storage=title.ks

*cg1
@clearfix
[cm]
[html]
<img src="data/bgimage/cg_manami.png" id="CG1" class="cg" width="1280">
<script>
$('#CG1').click(function(){tyrano.plugin.kag.ftag.startTag("jump", {target:"cg2"})});
</script>
[endhtml]
[s]

*cg2
@clearfix
[cm]
[html]
<img src="data/bgimage/cg_manami2.png" id="CG2" class="cg" width="1280">
<script>
$('#CG2').click(function(){tyrano.plugin.kag.ftag.startTag("jump", {target:"start"})});
</script>
[endhtml]
[s]

*cg3
@clearfix
[cm]
[html]
<img src="data/bgimage/cg_kata.png" id="CG3" class="cg" width="1280">
<script>
$('#CG3').click(function(){tyrano.plugin.kag.ftag.startTag("jump", {target:"start"})});
</script>
[endhtml]
[s]

*cg4
@clearfix
[cm]
[html]
<img src="data/bgimage/cg_dash.png" id="CG4" class="cg" width="1280">
<script>
$('#CG4').click(function(){tyrano.plugin.kag.ftag.startTag("jump", {target:"start"})});
</script>
[endhtml]
[s]

