[if exp="sf.trans==undefined"][eval exp="sf.trans=2"][endif]

[if exp="sf.trans==3"]
[title name=&"String('Absent\x20in\x20the\x20Rain')"]
[dialog_config_ok text="Yes"]
[dialog_config_ng text="No"]
[deffont face=EG]
[elsif exp="sf.trans==2"]
[title name="雨霏霏，人非人"]
[dialog_config_ok text="是"]
[dialog_config_ng text="否"]
[deffont face=NotoCJK]
[else]
[title name="雨にして人を外れ"]
[dialog_config_ok text="はい"]
[dialog_config_ng text="いいえ"]
[deffont face=applimincho]
[endif]

[stop_keyconfig]
[hidemenubutton]
[loadcss file="./data/others/css/message.css"]
[loadcss file="./data/others/css/next2.css"]
[loadcss file="./data/others/css/next1.css"]
[call storage="novecole.ks"]

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
"data/fgimage/bucho/bucho1.png",
"data/fgimage/bucho/bucho2.png",
"data/fgimage/bucho/bucho3.png",
"data/fgimage/bucho/bucho4.png",
"data/fgimage/bucho/bucho5.png",
"data/fgimage/bucho/bucho6.png",
"data/fgimage/bucho/bucho7.png",
];
f.preload_bg = [
"data/bgimage/ajisairain.jpg",
"data/bgimage/bus.jpg",
"data/bgimage/black.png",
"data/bgimage/busitu.jpg",
"data/bgimage/busiturain.jpg",
"data/bgimage/busiturain2.jpg",
"data/bgimage/class.jpg",
"data/bgimage/corridor.jpg",
"data/bgimage/entrance.jpg",
"data/bgimage/gallery_bg.jpg",
"data/bgimage/haruyaroom.jpg",
"data/bgimage/michi_rain.jpg",
"data/bgimage/title.jpg",
"data/bgimage/tekubi.jpg",
"data/bgimage/tekubi2.jpg",
"data/bgimage/tekubi3.jpg",
"data/bgimage/tonarib.jpg",
"data/bgimage/tonarib_n.jpg",
"data/bgimage/tonariemi_n.jpg",
"data/bgimage/tonarik.jpg",
"data/bgimage/tonarik_n.jpg",
"data/bgimage/tonarime_n.jpg",
"data/bgimage/tonarimono.jpg",
"data/bgimage/tonarimu.jpg",
"data/bgimage/shadow.jpg",
"data/bgimage/shadow2.jpg",
];
f.preload_bgm = [
"data/bgm/A_end_loop.ogg",
"data/bgm/ajisai_loop.ogg",
"data/bgm/fuon_loop.ogg",
"data/bgm/kaiwa_loop.ogg",
];
[endscript]

[preload storage="&f.preload_yukino"]
[preload storage="&f.preload_bucho"]
[preload storage="&f.preload_bg"]
;[preload storage="&f.preload_bgm"]

[chara_new  name="haruya" storage="haruya/haruya1.png" width=900 jname="春也" color=fff ]
[chara_new  name="bucho" storage="bucho/bucho1.png" width=1000 jname="部長" color=fff ]
[chara_new  name="yukino" storage="yukino/tatie1.png" width=1000 jname="先輩" color=fff ]
[chara_new  name="uyo" storage="uyo.png" width=900 jname="雨妖" color=fff ]

@call storage="tyrano.ks"

@layopt layer="message" visible=false

[mask time=1000]
[image layer=0 page=fore visible=true storage=logo.png]
[mask_off time=1000]
[wait time=1000]
[mask time=1000]
[freeimage layer=0 time=100]
[mask_off time=100]

[if exp="sf.Bclear==1"]
[eval exp="sf.Bclear=0"]
[endif]

[if exp="sf.trans==3]
@jump storage="scenario_en/title.ks"
[elsif exp="sf.trans==2]
@jump storage="scenario_ch/title.ks"
[else]
@jump storage="title.ks"
[endif]
[s]
