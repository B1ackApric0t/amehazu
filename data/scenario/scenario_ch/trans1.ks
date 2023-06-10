*start
[fadeoutbgm time=1000]
@layopt layer=message0 visible=false

@clearfix
[cm]

[html]
<img src="data/bgimage/language_back.png" style="z-index:-10;">
<div class="cg_back" style="left:50px;top:650px;position:absolute;cursor:pointer;z-index:10;">
	<img src="data/fgimage/lang_back.png" alt="" class="non">
</div>

<div id="jp" style="left:400px;top:400px;position:absolute;cursor:pointer;">
	<img src="data/fgimage/japanese.png" alt="" class="non">
</div>
<div id="ch" style="left:750px;top:400px;position:absolute;cursor:pointer;">
	<img src="data/fgimage/chinese_simplified.png" alt="" class="non">
</div>


<script>
$('.cg_back').click(function(){tyrano.plugin.kag.ftag.startTag("jump", {target:"backtitle"})});
$('#jp').click(function(){tyrano.plugin.kag.ftag.startTag("jump", {target:"jp"})});
$('#ch').click(function(){tyrano.plugin.kag.ftag.startTag("jump", {target:"ch"})});
$('#en').click(function(){tyrano.plugin.kag.ftag.startTag("jump", {target:"en"})});
</script>
[endhtml]
[s]

*jp
[eval exp="sf.trans=1"]
@jump target=*reload

*ch
[eval exp="sf.trans=2"]
@jump target=*reload

*en
[eval exp="sf.trans=3"]
@jump target=*reload


*reload
[cm]
[clearfix]
@jump storage=first.ks
[s]

*backtitle
[cm]
[clearfix]
@jump storage=scenario_ch/title.ks target=*start