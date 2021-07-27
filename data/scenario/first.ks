[title name="雨にして人を外れ"]

[stop_keyconfig]
[loadcss file="./data/others/css/mystyle.css" ]
[loadcss file="./data/others/css/message.css"]
[loadcss file="./data/others/css/next2.css"]
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
"data/fgimage/yukino/tatie7.png",
"data/fgimage/yukino/tatie8.png",
"data/fgimage/yukino/tatie9.png",
"data/fgimage/yukino/tatie10.png",
"data/fgimage/yukino/tatie11.png",
"data/fgimage/yukino/tatie12.png",
"data/fgimage/yukino/tatie13.png",
];
f.preload_bucho = [
"data/fgimage/bucho.png",
];
[endscript]

[preload storage="&f.preload_yukino"]
[preload storage="&f.preload_bucho"]

[chara_new  name="bucho" storage="bucho.png" width=1000 jname="部長" color=fff ]
[chara_new  name="yukino" storage="yukino/tatie1.png" width=1000 jname="先輩" color=fff ]

;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

@layopt layer="message" visible=false

[hidemenubutton]

@jump storage="title.ks"
[s]
