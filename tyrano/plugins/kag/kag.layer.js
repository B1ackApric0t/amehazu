tyrano.plugin.kag.layer = {
  tyrano: null,
  kag: null,
  layer_event: {},
  layer_menu: {},
  layer_free: {},
  map_layer_fore: {},
  map_layer_back: {},
  is_swipe: !1,
  timeoutId: 0,
  start_point: {
    x: 0,
    y: 0
  },
  end_point: {
    x: 0,
    y: 0
  },
  init: function () {
    $("#tyrano_base").append('<div id="root_layer_game" class="root_layer_game"></div>'), $("#tyrano_base").append('<div id="root_layer_system" class="root_layer_system"></div>');
    var e = $("<div class='layer layer_event_click' style='z-index:9999;display:none'></div>");
    e.css("width", this.kag.config.scWidth).css("height", this.kag.config.scHeight).css("position", "absolute"), this.layer_event = e, this.appendLayer(this.layer_event, "root_layer_system");
    var a = $("<div class='layer layer_menu' style='z-index:1000000000;display:none'  align='center'></div>");
    a.css("width", this.kag.config.scWidth).css("height", this.kag.config.scHeight).css("position", "absolute"), this.layer_menu = a, this.appendLayer(this.layer_menu, "root_layer_system");
    var s = $("<div class='layer layer_free' style='z-index:9998;display:none' ></div>");
    s.css("width", this.kag.config.scWidth).css("height", this.kag.config.scHeight).css("position", "absolute"), this.layer_free = s, this.appendLayer(this.layer_free, "root_layer_system")
  },
  getMenuLayer: function () {
    return this.layer_menu
  },
  getFreeLayer: function () {
    return this.layer_free
  },
  addLayer: function (e) {
    var a = "",
      s = $("<div class='layer " + e + "_fore layer_fore'></div>"),
      r = $("<div class='layer " + e + "_back layer_back' style='display:none'></div>"); - 1 == e.indexOf("message") ? (s.addClass("layer_camera"), r.addClass("layer_camera")) : a = "root_layer_system", s.css("width", this.kag.config.scWidth).css("height", this.kag.config.scHeight).css("position", "absolute"), r.css("width", this.kag.config.scWidth).css("height", this.kag.config.scHeight).css("position", "absolute"), this.map_layer_fore[e] = s, this.map_layer_back[e] = r, this.map_layer_fore[e].attr("l_visible", "true"), this.map_layer_back[e].attr("l_visible", "true"), this.appendLayer(this.map_layer_fore[e], a), this.appendLayer(this.map_layer_back[e], a)
  },
  appendLayer: function (e, a) {
    "" != (a = a || "root_layer_game") ? $("." + this.kag.define.BASE_DIV_NAME).find("#" + a).append(e): $("." + this.kag.define.BASE_DIV_NAME).append(e)
  },
  appendImage: function (e) {
    $("." + this.kag.define.BASE_DIV_NAME).append(layer_obj)
  },
  getLayer: function (e, a) {
    return "fix" == e ? $("#tyrano_base") : "fore" == (a = a || "fore") ? this.map_layer_fore[e] : this.map_layer_back[e]
  },
  updateLayer: function (e, a, s) {
    "fore" == (a = a || "fore") ? this.map_layer_fore[e] = s: this.map_layer_back[e] = s
  },
  hideMessageLayers: function () {
    this.kag.stat.is_hide_message = !0;
    for (var e = parseInt(this.kag.config.numMessageLayers), a = 0; a < e; a++) this.getLayer("message" + a).hide();
    this.hideFixLayer()
  },
  showMessageLayers: function () {
    this.kag.stat.is_hide_message = !1;
    for (var e = parseInt(this.kag.config.numMessageLayers), a = 0; a < e; a++) {
      var s = this.getLayer("message" + a);
      "true" == s.attr("l_visible") && s.show()
    }
    this.showFixLayer()
  },
  showFixLayer: function () {
    $(".fixlayer").show()
  },
  hideFixLayer: function () {
    $(".fixlayer").hide()
  },
  appendObj: function (e, a, s) {
    s.css("position", "absolute"), this.getLayer(e, a).append(s)
  },
  refMessageLayer: function (e) {
    var a = 0;
    if (e) {
      if (this.map_layer_fore[e]) {
        s = this.map_layer_fore[e].find(".message_outer");
        if(this.kag.variable.sf.trans == 3){
          this.map_layer_fore[e].find(".message_inner").css("left", parseInt(s.css("left")) + 10).css("top", parseInt(s.css("top")) + 10).css("width", parseInt(s.css("width")) - 120).css("height", parseInt(s.css("height")) - 10)
        }else{
          this.map_layer_fore[e].find(".message_inner").css("left", parseInt(s.css("left")) + 10).css("top", parseInt(s.css("top")) + 10).css("width", parseInt(s.css("width")) - 10).css("height", parseInt(s.css("height")) - 10)
        }
      }
    } else
      for (; this.map_layer_fore["message" + a];) {
        var s = this.map_layer_fore["message" + a].find(".message_outer");
        if(this.kag.variable.sf.trans == 3 || this.kag.variable.sf.trans == 4){
          this.map_layer_fore["message" + a].find(".message_inner").css("left", parseInt(s.css("left")) + 10).css("top", parseInt(s.css("top")) + 10).css("width", parseInt(s.css("width")) - 120).css("height", parseInt(s.css("height")) - 10), a++
        }else{
          this.map_layer_fore["message" + a].find(".message_inner").css("left", parseInt(s.css("left")) + 10).css("top", parseInt(s.css("top")) + 10).css("width", parseInt(s.css("width")) - 10).css("height", parseInt(s.css("height")) - 10), a++
        }
      }
  },
  getLayeyHtml: function () {
    var e = {
      map_layer_fore: {},
      map_layer_back: {},
      layer_free: {},
      layer_fix: {},
      layer_blend: {}
    };
    for (key in this.map_layer_fore) e.map_layer_fore[key] = $.playerHtmlPath(this.map_layer_fore[key].outerHTML());
    for (key in this.map_layer_back) e.map_layer_back[key] = $.playerHtmlPath(this.map_layer_back[key].outerHTML());
    e.layer_free = $.playerHtmlPath(this.layer_free.outerHTML());
    var a = 0;
    $(".fixlayer").each(function () {
      e.layer_fix[a] = $.playerHtmlPath($(this).outerHTML()), a++
    });
    var s = 0;
    return $(".blendlayer").each(function () {
      e.layer_blend[s] = $.playerHtmlPath($(this).outerHTML()), s++
    }), e
  },
  getLayerInfo() {
    var e = {
        map_layer_fore: this.map_layer_fore,
        layer_free: this.layer_free,
        layer_blend: this.layer_blend,
        layer_fix: {}
      },
      a = 0;
    return $(".fixlayer").each(function () {
      e.layer_fix[a] = $(this), a++
    }), e
  },
  setLayerHtml: function (e) {
    var a = this;
    for (key in e.map_layer_fore) this.map_layer_fore[key].remove(), delete this.map_layer_fore[key], this.map_layer_fore[key] = $(e.map_layer_fore[key]), this.appendLayer(this.map_layer_fore[key]);
    for (key in e.map_layer_back) this.map_layer_back[key].remove(), delete this.map_layer_back[key], this.map_layer_back[key] = $(e.map_layer_back[key]), this.appendLayer(this.map_layer_back[key]);
    for (key in $(".fixlayer").each(function () {
        $(this).remove()
      }), $(".three_canvas").each(function () {
        $(this).remove()
      }), e.layer_fix) $("#tyrano_base").append($(e.layer_fix[key]));
    for (key in $(".blendlayer").remove(), e.layer_blend) {
      var s = $(e.layer_blend[key]);
      if (s.hasClass("blendvideo")) {
        var r = JSON.parse(s.attr("data-video-pm"));
        r.stop = "true", r.time = 10,
          function () {
            var e = r;
            setTimeout(function () {
              a.kag.ftag.startTag("layermode_movie", e)
            }, 10)
          }()
      } else $("#tyrano_base").append(s)
    }
    this.layer_free.remove(), delete this.layer_free, this.layer_free = $(e.layer_free), this.appendLayer(this.layer_free)
  },
  clearMessageInnerLayerAll: function () {
    for (key in this.map_layer_fore) - 1 != key.indexOf("message") && this.map_layer_fore[key].find(".message_inner").html("")
  },
  backlay: function (e) {
    for (key in e = e || "", this.map_layer_fore)
      if ("" == e || e == key) {
        var a = this.map_layer_fore[key].attr("class"),
          s = this.map_layer_back[key].attr("class");
        this.map_layer_back[key] = this.map_layer_fore[key].clone(), this.map_layer_back[key].removeClass(a), this.map_layer_back[key].addClass(s), s = $.replaceAll(s, " ", "."), $("." + s).remove(), this.map_layer_back[key].hide(), this.appendLayer(this.map_layer_back[key])
      }
  },
  showEventLayer: function () {
    this.kag.stat.is_stop = !1, this.layer_event.show()
  },
  hideEventLayer: function () {
    this.kag.stat.is_stop = !0, this.layer_event.hide()
  },
  forelay: function (e) {
    for (key in e = e || "", this.map_layer_back)
      if ("" == e || e == key) {
        var a = this.map_layer_fore[key].attr("class"),
          s = this.map_layer_back[key].attr("class");
        this.map_layer_fore[key] = this.map_layer_back[key].clone(!0), this.map_layer_fore[key].removeClass(s), this.map_layer_fore[key].addClass(a), a = $.replaceAll(a, " ", "."), $("." + a).remove(), this.map_layer_back[key].before(this.map_layer_fore[key]), this.map_layer_back[key].css("display", "none"), -1 != key.indexOf("message") && this.map_layer_fore[key].css("opacity", "")
      }
  },
  test: function () {}
};