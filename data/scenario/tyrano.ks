
*start

;背景変更マクロ　storage と time を指定する
[macro name="back"]

;@layopt layer=message0 visible=false
[backlay]
[image layer=base page=back storage=%storage]
[trans layer="base" method=%method|crossfade children=false time=%time|2000]
[wt]
;@layopt layer=message0 visible=true

[endmacro]


;キャラクターを表示、そして設定
[macro name="charaset"]

[backlay]
[image storage=%storage left=%left|0 top=%top|0 layer=%layer page=back visible=true  ]
[trans time=%time|1]
@wt

[endmacro]

[macro name="chararemove"]

[freeimage layer = %layer]

[endmacro]

;;;;;;;;;;;;セーブ関係

;save情報を取得、ptextを継承する

[macro name="saveinfo"]

[iscript]

tf.savetext = "";

tf.array_save = TG.menu.getSaveData().data;
tf.data = tf.array_save[mp.index];

tf.title = tf.data.title;
tf.save_date = tf.data.save_date;

tf.savetext = "<span style='font-size:10px'>"+tf.save_date+"</span><br />"+tf.title;

[endscript]

[ptext * text=&tf.savetext ]


[endmacro]

[macro name="setsave"]

    [iscript]

        TG.menu.doSave(mp.index);
        
    [endscript]

[endmacro]

[macro name="loading"]

    [iscript]

        TG.menu.loadGame(mp.index);

    [endscript]

[endmacro]


;/////////////拡張 CGモードなどを利用するための設定

[iscript]
	
	if(sf.cg_view){
    }else{
    	sf.cg_view = {};
    }
	
	if(sf.replay_view){
    }else{
    	sf.replay_view = {};
    }
	
	
[endscript]


;CGモードのボタンを表示するためのマクロ
[macro name="cg_image_button"]
	
	[iscript]
		
		mp.graphic = mp.graphic.split(',');
		mp.tmp_graphic = mp.graphic.concat();
		tf.is_cg_open = false;
		if(sf.cg_view[mp.graphic[0]]){
			tf.is_cg_open = true;
		}
		
        if(typeof mp.thumb !="undefined"){
            mp.tmp_graphic[0] = mp.thumb;
        }
	
	
	[endscript]
	
	;渡された値を元に、CG状態を確認していく
	[if exp="tf.is_cg_open==true"]
		[button graphic=&mp.tmp_graphic[0] x=&mp.x y=&mp.y width=&mp.width height=&mp.height preexp="mp.graphic" exp="tf.selected_cg_image = preexp" storage="cg.ks" target="*clickcg" folder="bgimage" ]
	[else]
		[button graphic=&mp.no_graphic x=&mp.x y=&mp.y width=&mp.width height=&mp.height storage="cg.ks" target="*no_image" folder="bgimage" ]
	[endif]
[endmacro]

;CGが閲覧された場合、CGモードで表示できるようにする
[macro name="cg" ]

    [iscript]

        sf.cg_view[mp.storage] = "on";
    
    [endscript]

[endmacro]


;リプレイモード
;CGモードのボタンを表示するためのマクロ
[macro name="replay_image_button"]
	
	[iscript]
		
		tf.is_replay_open = false;
		if(sf.replay_view[mp.name]){
			tf.is_replay_open = true;
		}
	
	[endscript]
	
	;渡された値を元に、CG状態を確認していく
	[if exp="tf.is_replay_open==true"]
		[button graphic=&mp.graphic x=&mp.x y=&mp.y width=&mp.width height=&mp.height preexp="sf.replay_view[mp.name]" exp="tf.selected_replay_obj = preexp" storage="replay.ks" target="*clickcg" folder="bgimage" ]
	[else]
		[button graphic=&mp.no_graphic x=&mp.x y=&mp.y width=&mp.width height=&mp.height storage="replay.ks" target="*no_image" folder="bgimage" ]
	[endif]
	
[endmacro]

;リプレイを開放する
[macro name="setreplay" ]

    [iscript]

        sf.replay_view[mp.name] = {storage:mp.storage, target:mp.target};
    
    [endscript]

[endmacro]

[macro name="endreplay"]

    [if exp="tf.flag_replay == true"]
        
        @layopt page="fore" layer="message0" visible=false
        ;システムボタンを非表示にするなど
        [hidemenubutton]
        
        @jump storage="replay.ks" 
        
    [endif]

[endmacro]

;1無表情,2にこにこ,3悲しげ,4ごまかし,5苛立ち,6困惑
[macro name="yukino/1"][chara_mod name="yukino" storage="yukino/tatie1.png" cross="false" wait="false"][endmacro]
[macro name="yukino/2"][chara_mod name="yukino" storage="yukino/tatie2.png" cross="false" wait="false"][endmacro]
[macro name="yukino/3"][chara_mod name="yukino" storage="yukino/tatie3.png" cross="false" wait="false"][endmacro]
[macro name="yukino/4"][chara_mod name="yukino" storage="yukino/tatie4.png" cross="false" wait="false"][endmacro]
[macro name="yukino/5"][chara_mod name="yukino" storage="yukino/tatie5.png" cross="false" wait="false"][endmacro]
[macro name="yukino/6"][chara_mod name="yukino" storage="yukino/tatie6.png" cross="false" wait="false"][endmacro]
[macro name="yukino/7"][chara_mod name="yukino" storage="yukino/tatie7.png" cross="false" wait="false"][endmacro]
[macro name="yukino/8"][chara_mod name="yukino" storage="yukino/tatie8.png" cross="false" wait="false"][endmacro]
[macro name="yukino/9"][chara_mod name="yukino" storage="yukino/tatie9.png" cross="false" wait="false"][endmacro]
[macro name="yukino/10"][chara_mod name="yukino" storage="yukino/tatie10.png" cross="false" wait="false"][endmacro]
[macro name="yukino/11"][chara_mod name="yukino" storage="yukino/tatie11.png" cross="false" wait="false"][endmacro]
[macro name="yukino/12"][chara_mod name="yukino" storage="yukino/tatie12.png" cross="false" wait="false"][endmacro]
[macro name="yukino/13"][chara_mod name="yukino" storage="yukino/tatie13.png" cross="false" wait="false"][endmacro]
[macro name="yukino1"][chara_show name="yukino" storage="yukino/tatie1.png" top="30" left="150" time=700][endmacro]
[macro name="yukino2"][chara_show name="yukino" storage="yukino/tatie2.png" top="30" left="150" time=700][endmacro]
[macro name="yukino3"][chara_show name="yukino" storage="yukino/tatie3.png" top="30" left="150" time=700][endmacro]
[macro name="yukino4"][chara_show name="yukino" storage="yukino/tatie4.png" top="30" left="150" time=700][endmacro]
[macro name="yukino5"][chara_show name="yukino" storage="yukino/tatie5.png" top="30" left="150" time=700][endmacro]
[macro name="yukino6"][chara_show name="yukino" storage="yukino/tatie6.png" top="30" left="150" time=700][endmacro]
[macro name="yukino7"][chara_show name="yukino" storage="yukino/tatie7.png" top="30" left="150" time=700][endmacro]
[macro name="yukino8"][chara_show name="yukino" storage="yukino/tatie8.png" top="30" left="150" time=700][endmacro]
[macro name="yukino9"][chara_show name="yukino" storage="yukino/tatie9.png" top="30" left="150" time=700][endmacro]
[macro name="yukino10"][chara_show name="yukino" storage="yukino/tatie10.png" top="30" left="150" time=700][endmacro]
[macro name="yukino11"][chara_show name="yukino" storage="yukino/tatie11.png" top="30" left="150" time=700][endmacro]
[macro name="yukino12"][chara_show name="yukino" storage="yukino/tatie12.png" top="30" left="150" time=700][endmacro]
[macro name="yukino13"][chara_show name="yukino" storage="yukino/tatie13.png" top="30" left="150" time=700][endmacro]
[macro name="yukinohide"][chara_hide name="yukino" time=700][endmacro]

[macro name="bucho"][chara_show name="bucho" storage="bucho.png" top="30" left="150" time=700][endmacro]
[macro name="buchohide"][chara_hide name="bucho" time=700][endmacro]

;スチル
[macro name="M1"][position layer="message0" left=0 top=581 width=1280 height=180 frame="frame_still.png" page=fore visible=true]
[position layer="message0" page=fore margint="00" marginl="300" marginr="150" marginb="80"]
[loadcss file="./data/others/css/next2.css"]
[anim name="chara_name_area" top="+=150" left="-=120" time="0"][endmacro]

;通常
[macro name="M0"][position layer="message0" left=100 top=460 width=1180 height=260 frame="frame2.png" page=fore visible=true]
[position layer="message0" page=fore margint="70" marginl="190" marginr="150" marginb="50"]
[loadcss file="./data/others/css/next1.css"]
[anim name="chara_name_area" top="-=150" left="+=120" time="0"][endmacro]

[macro name="trans_in"]
[trans layer="%layer|0" time="%time|700" method="%method|fadeIn"]
[wt]
[endmacro]

[macro name="trans_out"]
[backlay layer="%layer|0"]
[trans layer="%layer|0" time="%time|700" method="%method|fadeOut"]
[freeimage layer="%layer|0"]
[wt]
[freeimage layer="%layer|0"]
[endmacro]

[return]


