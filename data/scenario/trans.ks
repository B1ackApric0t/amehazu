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

<div id="jp" style="left:410px;top:350px;position:absolute;cursor:pointer;">
	<img src="data/fgimage/japanese.png" alt="" class="non">
</div>
<div id="ch" style="left:575px;top:350px;position:absolute;cursor:pointer;">
	<img src="data/fgimage/chinese_simplified.png" alt="" class="non">
</div>
<div id="en" style="left:780px;top:350px;position:absolute;cursor:pointer;">
	<img src="data/fgimage/english.png" alt="" class="non">
</div>
<div id="es" style="left:410px;top:480px;position:absolute;cursor:pointer;">
	<img src="data/fgimage/spanish.png" alt="" class="non">
</div>
<div id="ru" style="left:585px;top:480px;position:absolute;cursor:pointer;">
	<img src="data/fgimage/russian.png" alt="" class="non">
</div>
<div id="fr" style="left:775px;top:480px;position:absolute;cursor:pointer;">
	<img src="data/fgimage/french.png" alt="" class="non">
</div>

<script>
$('.cg_back').click(function(){tyrano.plugin.kag.ftag.startTag("jump", {target:"backtitle"})});
$('#jp').click(function(){tyrano.plugin.kag.ftag.startTag("jump", {target:"jp"})});
$('#ch').click(function(){tyrano.plugin.kag.ftag.startTag("jump", {target:"ch"})});
$('#en').click(function(){tyrano.plugin.kag.ftag.startTag("jump", {target:"en"})});
$('#es').click(function(){tyrano.plugin.kag.ftag.startTag("jump", {target:"es"})});
$('#ru').click(function(){tyrano.plugin.kag.ftag.startTag("jump", {target:"ru"})});
$('#fr').click(function(){tyrano.plugin.kag.ftag.startTag("jump", {target:"fr"})});
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

*es
[eval exp="sf.trans=4"]
@jump target=*reload

*ru
[eval exp="sf.trans=5"]
@jump target=*reload

*fr
[eval exp="sf.trans=6"]
@jump target=*reload

*reload
[cm]
[clearfix]
@jump storage=first.ks
[s]

*backtitle
[cm]
[clearfix]

[if exp="sf.trans==6]
@jump storage="scenario_fr/title.ks" target=*start
[elsif exp="sf.trans==5]
@jump storage="scenario_ru/title.ks" target=*start
[elsif exp="sf.trans==4]
@jump storage="scenario_es/title.ks" target=*start
[elsif exp="sf.trans==3]
@jump storage="scenario_en/title.ks" target=*start
[elsif exp="sf.trans==2]
@jump storage="scenario_ch/title.ks" target=*start
[else]
@jump storage=title.ks target=*start
[endif]