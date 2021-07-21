[title name="雨にして人を外れ"]

[stop_keyconfig]
[loadcss file="./data/others/css/mystyle.css" ]
[loadcss file="./data/others/css/message.css"]
[loadcss file="./data/others/css/next1.css"]
[plugin name="waapi"]
[plugin name=bg_rule]

[loadbgm str="BGM1.ogg"]
[loadbgm str="BGM2.ogg"]
[loadbgm str="BGM3.ogg"]
[loadbgm str="BGM4.ogg"]
[loadbgm str="BGM5.ogg"]
[loadbgm str="BGM6.ogg"]
[loadbgm str="ED.ogg"]
[loadbgm str="OP.ogg"]

[iscript]
f.preload_yukino = [
"data/fgimage/yukino/tatie1.png",
"data/fgimage/yukino/tatie2.png",
"data/fgimage/yukino/tatie3.png",
"data/fgimage/yukino/tatie4.png",
"data/fgimage/yukino/tatie5.png",
"data/fgimage/yukino/tatie6.png",
];
[endscript]

[preload storage="&f.preload_yukino"]

;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

@layopt layer="message" visible=false

[hidemenubutton]

@jump storage="title.ks"
[s]
