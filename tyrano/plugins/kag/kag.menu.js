tyrano.plugin.kag.menu = {
  tyrano: null,
  kag: null,
  snap: null,
  init: function () {},
  showMenu: function (t) {
    if ("none" == this.kag.layer.layer_event.css("display") && 1 != this.kag.stat.is_strong_stop) return !1;
    if (1 == this.kag.stat.is_wait) return !1;
    var a = this;
    this.kag.stat.is_skip = !1, this.kag.stat.is_auto = !1, this.kag.stat.is_auto_wait = !1;
    var e = this.kag.layer.getMenuLayer();
    e.empty();
    var n = !1;
    this.kag.html("menu", {
      novel: $.novel
    }, function (t) {
      var s = $(t);
      e.append(s), e.find(".menu_skip").click(function (t) {
        e.html(""), e.hide(), 1 == a.kag.stat.visible_menu_button && $(".button_menu").show(), a.kag.stat.is_skip = !0, "none" == a.kag.layer.layer_event.css("display") || a.kag.ftag.nextOrder(), t.stopPropagation()
      }), e.find(".menu_auto").click(function (t) {
        e.html(""), e.hide(), 1 == a.kag.stat.visible_menu_button && $(".button_menu").show(), a.kag.stat.is_auto = !0, "none" == a.kag.layer.layer_event.css("display") || a.kag.ftag.nextOrder(), t.stopPropagation()
      }), e.find(".menu_close").click(function (t) {
        e.hide(), 1 == a.kag.stat.visible_menu_button && $(".button_menu").show(), t.stopPropagation()
      }), e.find(".menu_window_close").click(function (t) {
        a.kag.layer.hideMessageLayers(), e.hide(), 1 == a.kag.stat.visible_menu_button && $(".button_menu").show(), t.stopPropagation()
      }), e.find(".menu_save").click(function (t) {
        1 != n && (n = !0, a.displaySave(), t.stopPropagation())
      }), e.find(".menu_load").click(function (t) {
        1 != n && (n = !0, a.displayLoad(), t.stopPropagation())
      }), e.find(".menu_config").click(function (t) {
        e.hide(),1 != n && (n = !0, tyrano.plugin.kag.ftag.startTag("sleepgame",{storage:"config.ks",next:false}))
      }), e.find(".menu_log").click(function (t) {
        1 != n && (n = !0, a.displayLog(), t.stopPropagation())
      }), e.find(".menu_back_title").click(function () {
        a.kag.backTitle()
      }), e.find(".menu_back_title_ch").click(function () {
        a.kag.backTitleCh()
      }),  $.preloadImgCallback(s, function () {
        e.fadeIn(300), $(".button_menu").hide()
      }, a)
    })
  },
  
   displayConfig: function (t) {
    var a = this;
    this.kag.stat.is_skip = !1;
    var layer_menu = a.kag.layer.getMenuLayer();
    this.kag.html("config", {
      novel: $.novel
    }, function (w) {
      var n = $(w);
       n.find(".menu_load").click(function (t) {
         a.displayLoad(), w.fadeOut(function () {
          n.empty()
        })
      }),
      n.find(".menu_save").click(function (t) {
        a.displaySave(), w.fadeOut(function () {
          n.empty()
        })
      }),
      n.find(".menu_back_title").click(function () {
        a.kag.backTitle()
      }),
      "pc" != $.userenv() && (n.find(".button_smart").show(), n.find(".button_arrow_up").click(function () {
      }));
      var layer_menu = a.kag.layer.getMenuLayer();
      a.setMenu(n, t)
    })
  },
  
  displaySave: function (t) {
    var a = this;
    this.kag.stat.is_skip = !1;
    for (var e = a.getSaveData().data, n = (a.kag.layer.getMenuLayer(), 0); n < e.length; n++) e[n].num = n;
    this.kag.html("save", {
      array_save: e,
      novel: $.novel
    }, function (e) {
      var n = $(e);
       n.find(".menu_load").click(function (t) {
         a.displayLoad(), e.fadeOut(200, function () {
          n.empty()
        })
      }),
      n.find(".menu_config").click(function (t) {
         a.displayConfig(), e.fadeOut(200, function () {
          n.empty()
        })
      }),
      n.find(".menu_back_title").click(function () {
        a.kag.backTitle()
      }),
      n.find(".save_list").css("font-family", a.kag.config.userFace), n.find(".save_display_area").each(function () {
        $(this).click(function (e) {
          var n = $(this).attr("data-num");
          a.snap = null;
          var s = a.kag.layer.getMenuLayer();
          s.hide(), s.empty(), 1 == a.kag.stat.visible_menu_button && $(".button_menu").show(), a.doSave(n, function () {
            "function" == typeof t && t()
          })
        })
      }), n.find(".button_smart").hide(), "pc" != $.userenv() && (n.find(".button_smart").show(), n.find(".button_arrow_up").click(function () {
        var t = n.find(".area_save_list").scrollTop() - 160;
        s.find(".area_save_list").animate({
          scrollTop: t
        }, {
          queue: !1
        })
      }), n.find(".button_arrow_down").click(function () {
        var t = n.find(".area_save_list").scrollTop() + 160;
        n.find(".area_save_list").animate({
          scrollTop: t
        }, {
          queue: !1
        })
      }));
      var s = a.kag.layer.getMenuLayer();
      a.setMenu(n, t)
    })
  },
  doSave: function (t, a) {
    var e = this.getSaveData(),
      n = {},
      s = this;
    null == this.snap ? this.snapSave(this.kag.stat.current_save_str, function () {
      (n = s.snap).save_date = $.getNowDate() + "/" + $.getNowTime(), e.data[t] = n, $.setStorage(s.kag.config.projectID + "_tyrano_data", e, s.kag.config.configSave), "function" == typeof a && a()
    }) : "function" == typeof a && a()
  },
  setQuickSave: function () {
    var t = this,
      a = t.kag.stat.current_save_str;
    t.kag.menu.snapSave(a, function () {
      var a = t.snap;
      a.save_date = $.getNowDate() + "/" + $.getNowTime(), $.setStorage(t.kag.config.projectID + "_tyrano_quick_save", a, t.kag.config.configSave)
    })
  },
  loadQuickSave: function () {
    var t = $.getStorage(this.kag.config.projectID + "_tyrano_quick_save", this.kag.config.configSave);
    if (!t) return !1;
    t = JSON.parse(t), this.loadGameData($.extend(!0, {}, t))
  },
  doSetAutoSave: function () {
    var t = this.snap;
    t.save_date = $.getNowDate() + "/" + $.getNowTime(), $.setStorage(this.kag.config.projectID + "_tyrano_auto_save", t, this.kag.config.configSave)
  },
  loadAutoSave: function () {
    var t = $.getStorage(this.kag.config.projectID + "_tyrano_auto_save", this.kag.config.configSave);
    if (!t) return !1;
    t = JSON.parse(t), this.loadGameData($.extend(!0, {}, t), {
      auto_next: "yes"
    })
  },
  snapSave: function (t, a, e) {
    var n = this,
      s = n.kag.ftag.current_order_index - 1,
      i = $.extend(!0, {}, $.cloneObject(n.kag.stat)),
      o = (l = this.kag.tmp.three).models,
      r = {};
    r.stat = l.stat, r.evt = l.evt;
    var l = this.kag.tmp.three,
      c = {};
    for (var g in o) {
      var u = o[g];
      c[g] = u.toSaveObj()
    }
    if (r.models = c, void 0 === e && (e = this.kag.config.configThumbnail), "false" == e) {
      var d = {};
      d.title = t, d.stat = i, d.three = r, d.current_order_index = s, d.save_date = $.getNowDate() + "/" + $.getNowTime(), d.img_data = "";
      var f = n.kag.layer.getLayeyHtml();
      d.layer = f, n.snap = $.extend(!0, {}, $.cloneObject(d)), a && a()
    } else $("#tyrano_base").find(".layer_blend_mode").css("display", "none"), setTimeout(function () {
      var e = function (e) {
        var o = {};
        o.title = t, o.stat = i, o.three = r, o.current_order_index = s, o.save_date = $.getNowDate() + "/" + $.getNowTime(), o.img_data = e;
        var l = n.kag.layer.getLayeyHtml();
        o.layer = l, n.snap = $.extend(!0, {}, $.cloneObject(o)), a && a()
      };
      if ("" != n.kag.stat.save_img) {
        var o = new Image;
        o.src = i.save_img, o.onload = function () {
          var t = document.createElement("canvas");
          t.width = n.kag.config.scWidth, t.height = n.kag.config.scHeight, t.getContext("2d").drawImage(o, 0, 0);
          var a = n.createImgCode(t);
          e(a)
        }
      } else {
        let t, a, s = document.createElement("canvas"),
          i = s.getContext("2d"),
          o = document.querySelectorAll("video");
        for (let e = 0, n = o.length; e < n; e++) {
          const n = o[e];
          try {
            t = n.videoWidth, a = n.videoHeight, s.style.left = n.style.left, s.style.top = n.style.top, s.style.width = n.style.width, s.style.height = n.style.height, s.width = t, s.height = a, i.fillRect(0, 0, t, a), i.drawImage(n, 0, 0, t, a), n.style.backgroundImage = `url(${s.toDataURL()})`, n.style.backgroundSize = "cover", n.classList.add("tmp_video_canvas"), i.clearRect(0, 0, t, a)
          } catch (t) {
            continue
          }
        }
        var l = $("#tyrano_base"),
          c = l.css("left"),
          g = l.css("top"),
          u = l.css("transform");
        l.css("left", 0), l.css("top", 0), l.css("transform", "");
        var d = {
          height: n.kag.config.scHeight,
          width: n.kag.config.scWidth
        };
        html2canvas(l.get(0), d).then(function (t) {
          $("#tyrano_base").find(".layer_blend_mode").css("display", ""), $("#tyrano_base").find(".tmp_video_canvas").css("backgroundImage", "");
          var a = n.createImgCode(t);
          e(a)
        }), l.hide(), l.css("left", c), l.css("top", g), l.css("transform", u), l.show()
      }
    }, 20)
  },
  createImgCode: function (t) {
    var a = this.kag.config.configThumbnailQuality;
    return "low" == a ? t.toDataURL("image/jpeg", .3) : "middle" == a ? t.toDataURL("image/jpeg", .7) : t.toDataURL()
  },
  setGameSleep: function (t) {
    this.kag.tmp.sleep_game_next = !!t, this.kag.tmp.sleep_game = this.snap
  },
  
  displayLoad: function (t) {
    var a = this;
    this.kag.stat.is_skip = !1;
    for (var e = a.getSaveData().data, n = (a.kag.layer.getMenuLayer(), 0); n < e.length; n++) e[n].num = n;
    this.kag.html("load", {
      array_save: e,
      novel: $.novel
    }, function (n) {
      var s = $(n);
      s.find(".menu_save").click(function (t) {
         a.displaySave(), s.fadeOut(200, function () {
          n.empty()
        })
      }),
       s.find(".menu_config").click(function (t) {
       a.displayConfig(), s.fadeOut(200, function () {
          n.empty()
        })
      }),
      s.find(".menu_back_title").click(function () {
        a.kag.backTitle()
      }),
      s.find(".save_list").css("font-family", a.kag.config.userFace), s.find(".save_display_area").each(function () {
        $(this).click(function (t) {
          var n = $(this).attr("data-num");
          if ("" != e[n].save_date) {
            a.snap = null, a.loadGame(n);
            var s = a.kag.layer.getMenuLayer();
            s.hide(), s.empty(), 1 == a.kag.stat.visible_menu_button && $(".button_menu").show()
          }
        })
      }), s.find(".button_smart").hide(), "pc" != $.userenv() && (s.find(".button_smart").show(), s.find(".button_arrow_up").click(function () {
        var t = s.find(".area_save_list").scrollTop() - 160;
        i.find(".area_save_list").animate({
          scrollTop: t
        }, {
          queue: !1
        })
      }), s.find(".button_arrow_down").click(function () {
        var t = s.find(".area_save_list").scrollTop() + 160;
        s.find(".area_save_list").animate({
          scrollTop: t
        }, {
          queue: !1
        })
      }));
      var i = a.kag.layer.getMenuLayer();
      a.setMenu(s, t)
    })
  },
  loadGame: function (t) {
    var a = this.getSaveData().data;
    if ("" != a[t].save_date) {
      var e = "no";
      1 == a[t].stat.load_auto_next && (a[t].stat.load_auto_next = !1, e = "yes"), this.loadGameData($.extend(!0, {}, a[t]), {
        auto_next: e
      })
    }
  },
  loadGameData: function (t, a) {
    var e = "no";
    if (void 0 === a ? a = {
        bgm_over: "false"
      } : void 0 === a.bgm_over && (a.bgm_over = "false"), a.auto_next && (e = a.auto_next), "undefined" != typeof Live2Dcanvas)
      for (model_id in Live2Dcanvas) Live2Dcanvas[model_id] && (Live2Dcanvas[model_id].check_delete = 2, Live2D.deleteBuffer(Live2Dcanvas[model_id].modelno), delete Live2Dcanvas[model_id]);
    if (this.kag.layer.setLayerHtml(t.layer), this.kag.stat = t.stat, 1 == this.kag.stat.is_strong_stop ? e = "stop" : this.kag.stat.is_strong_stop = !1, this.kag.setTitle(this.kag.stat.title), "false" == a.bgm_over) {
      var n = this.kag.tmp.map_se;
      for (var s in n) n[s] && this.kag.ftag.startTag("stopse", {
        stop: "true",
        buf: s
      });
      var i = this.kag.tmp.map_bgm;
      for (var s in i) this.kag.ftag.startTag("stopbgm", {
        stop: "true",
        buf: s
      });
      if ("" != this.kag.stat.current_bgm) {
        var o = {
          loop: "true",
          storage: this.kag.stat.current_bgm,
          stop: "true"
        };
        "" != this.kag.stat.current_bgm_vol && (o.volume = this.kag.stat.current_bgm_vol), this.kag.ftag.startTag("playbgm", o)
      }
      for (s in this.kag.stat.current_se) {
        var r = this.kag.stat.current_se[s];
        r.stop = "true", this.kag.ftag.startTag("playse", r)
      }
    }
    if (this.kag.stat.cssload)
      for (file in this.kag.stat.cssload) {
        var l = '<link rel="stylesheet" href="' + file + "?" + Math.floor(1e7 * Math.random()) + '">';
        $("head link:last").after(l)
      } else this.kag.stat.cssload = {};
    if (this.kag.stat.current_bgmovie || (this.kag.stat.current_bgmovie = {
        storage: "",
        volume: ""
      }), "true" == this.kag.config.useCamera)
      for (s in $(".layer_camera").css({
          "-animation-name": "",
          "-animation-duration": "",
          "-animation-play-state": "",
          "-animation-delay": "",
          "-animation-iteration-count": "",
          "-animation-direction": "",
          "-animation-fill-mode": "",
          "-animation-timing-function": ""
        }), this.kag.stat.current_camera) {
        var c = {
          frames: {
            "0%": {
              trans: this.kag.stat.current_camera[s]
            },
            "100%": {
              trans: this.kag.stat.current_camera[s]
            }
          },
          config: {
            duration: "5ms",
            state: "running",
            easing: "ease"
          },
          complete: function () {}
        };
        "layer_camera" == s ? ($(".layer_camera").css("-webkit-transform-origin", "center center"), setTimeout(function () {
          $(".layer_camera").a3d(c)
        }, 1)) : ($("." + s + "_fore").css("-webkit-transform-origin", "center center"), setTimeout(function () {
          $("." + s + "_fore").a3d(c)
        }, 1))
      }
    if ($(".tyrano_base").find("video").remove(), this.kag.tmp.video_playing = !1, "" != this.kag.stat.current_bgmovie.storage) {
      o = {
        storage: this.kag.stat.current_bgmovie.storage,
        volume: this.kag.stat.current_bgmovie.volume,
        stop: "true"
      };
      this.kag.tmp.video_playing = !1, this.kag.ftag.startTag("bgmovie", o)
    }
    "" != this.kag.stat.current_bgcamera && (this.kag.stat.current_bgcamera.stop = "true", this.kag.ftag.startTag("bgcamera", this.kag.stat.current_bgcamera));
    var g = t.three;
    if (1 == g.stat.is_load) {
      this.kag.stat.is_strong_stop = !0;
      var u = g.stat.init_pm;
      this.kag.ftag.startTag("3d_close", {}), u.next = "false", this.kag.ftag.startTag("3d_init", u);
      var d = g.models,
        f = g.stat.scene_pm;
      for (var s in f.next = "false", this.kag.ftag.startTag("3d_scene", f), d) {
        var m = d[s];
        (o = m.pm).pos = m.pos, o.rot = m.rot, o.scale = m.scale;
        var _ = o._tag;
        "camera" == s && (_ = "3d_camera"), o.next = "false", console.log("========="), console.log(_), console.log(o), this.kag.ftag.startTag(_, o)
      }
      var v = g.stat.gyro;
      if (1 == v.enable) {
        var h = v.pm;
        h.next = "false", this.kag.ftag.startTag("3d_gyro", h)
      }
      g.stat.canvas_show ? this.kag.tmp.three.j_canvas.show() : this.kag.tmp.three.j_canvas.hide(), this.kag.tmp.three.stat = g.stat, this.kag.tmp.three.evt = g.evt, this.kag.stat.is_strong_stop = !1
    }
    this.kag.setCursor(this.kag.stat.current_cursor), 1 == this.kag.stat.visible_menu_button ? $(".button_menu").show() : $(".button_menu").hide(), $(".event-setting-element").each(function () {
      var t = $(this),
        a = t.attr("data-event-tag"),
        e = JSON.parse(t.attr("data-event-pm"));
      object(tyrano.plugin.kag.tag[a]).setEvent(t, e)
    });
    var k = {
      name: "call",
      pm: {
        storage: "make.ks",
        auto_next: e
      },
      val: ""
    };
    this.kag.clearTmpVariable(), this.kag.ftag.nextOrderWithIndex(t.current_order_index, t.stat.current_scenario, !0, k, "yes")
  },
  setMenu: function (t, a) {
    var e = this,
      n = this.kag.layer.getMenuLayer();
    t.find(".menu_close").click(function (t) {
      n.fadeOut(300, function () {
        n.empty(), "function" == typeof a && a()
      }), 1 == e.kag.stat.visible_menu_button && $(".button_menu").show()
    }), t.hide(), n.append(t), n.show(), $.preloadImgCallback(n, function () {
      t.fadeIn(300), n.find(".block_menu").fadeOut(300)
    }, e)
  },
  hideMenu: function () {},
  getSaveData: function () {
    var t = $.getStorage(this.kag.config.projectID + "_tyrano_data", this.kag.config.configSave);
    if (t) return JSON.parse(t);
    t = new Array;
    for (var a = {
        kind: "save"
      }, e = this.kag.config.configSaveSlotNum || 5, n = 0; n < e; n++) {
      var s = {};
      s.title = $.lang("not_saved"), s.current_order_index = 0, s.save_date = "", s.img_data = "", s.stat = {}, t.push(s)
    }
    return a.data = t, a
  },
  displayLog: function () {
    var t = this;
    this.kag.stat.is_skip = !1;
    $("<div></div>");
    this.kag.html("backlog", {
      novel: $.novel
    }, function (a) {
      var e = $(a),
        n = t.kag.layer.getMenuLayer();
      n.empty(), n.append(e), n.find(".menu_close").click(function () {
        n.fadeOut(300, function () {
          n.empty()
        }), 1 == t.kag.stat.visible_menu_button && $(".button_menu").show()
      }), n.find(".button_smart").hide(), "pc" != $.userenv() && (n.find(".button_smart").show(), n.find(".button_arrow_up").click(function () {
        var t = n.find(".log_body").scrollTop() - 60;
        n.find(".log_body").animate({
          scrollTop: t
        }, {
          queue: !1
        })
      }), n.find(".button_arrow_down").click(function () {
        var t = n.find(".log_body").scrollTop() + 60;
        n.find(".log_body").animate({
          scrollTop: t
        }, {
          queue: !1
        })
      }));
      for (var s = "", i = t.kag.variable.tf.system.backlog, o = 0; o < i.length; o++) s += i[o] + "<br />";
      n.find(".log_body").html(s), n.find(".log_body").css("font-family", t.kag.config.userFace), $.preloadImgCallback(n, function () {
        n.fadeIn(300), n.find(".log_body").scrollTop(9999999999)
      }, t), $(".button_menu").hide()
    })
  },
  screenFull: function () {
    var t = document.webkitFullscreenElement || document.mozFullScreenElement || document.msFullscreenElement || document.fullScreenElement || !1,
      a = document.fullscreenEnabled || document.webkitFullscreenEnabled || document.mozFullScreenEnabled || document.msFullscreenEnabled || !1,
      e = document.body;
    a && (e.requestFullscreen ? t ? document.exitFullscreen() : e.requestFullscreen() : e.webkitRequestFullscreen ? t ? document.webkitExitFullscreen() : e.webkitRequestFullscreen() : e.mozRequestFullScreen ? t ? document.mozCancelFullScreen() : e.mozRequestFullScreen() : e.msRequestFullscreen && (t ? document.msExitFullscreen() : e.msRequestFullscreen()))
  },
  test: function () {}
};