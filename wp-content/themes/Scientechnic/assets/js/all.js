/* bootstrap.js v3.0.0 */ if (true) {
  if (!jQuery) throw new Error("Bootstrap requires jQuery");
  +(function (a) {
    "use strict";
    function b() {
      var a = document.createElement("bootstrap"),
        b = {
          WebkitTransition: "webkitTransitionEnd",
          MozTransition: "transitionend",
          OTransition: "oTransitionEnd otransitionend",
          transition: "transitionend",
        };
      for (var c in b) if (void 0 !== a.style[c]) return { end: b[c] };
    }
    (a.fn.emulateTransitionEnd = function (b) {
      var c = !1,
        d = this;
      a(this).one(a.support.transition.end, function () {
        c = !0;
      });
      var e = function () {
        c || a(d).trigger(a.support.transition.end);
      };
      return setTimeout(e, b), this;
    }),
      a(function () {
        a.support.transition = b();
      });
  })(window.jQuery),
    +(function (a) {
      "use strict";
      var b = '[data-dismiss="alert"]',
        c = function (c) {
          a(c).on("click", b, this.close);
        };
      c.prototype.close = function (b) {
        function c() {
          f.trigger("closed.bs.alert").remove();
        }
        var d = a(this),
          e = d.attr("data-target");
        e || ((e = d.attr("href")), (e = e && e.replace(/.*(?=#[^\s]*$)/, "")));
        var f = a(e);
        b && b.preventDefault(),
          f.length || (f = d.hasClass("alert") ? d : d.parent()),
          f.trigger((b = a.Event("close.bs.alert"))),
          b.isDefaultPrevented() ||
            (f.removeClass("in"),
            a.support.transition && f.hasClass("fade")
              ? f.one(a.support.transition.end, c).emulateTransitionEnd(150)
              : c());
      };
      var d = a.fn.alert;
      (a.fn.alert = function (b) {
        return this.each(function () {
          var d = a(this),
            e = d.data("bs.alert");
          e || d.data("bs.alert", (e = new c(this))),
            "string" == typeof b && e[b].call(d);
        });
      }),
        (a.fn.alert.Constructor = c),
        (a.fn.alert.noConflict = function () {
          return (a.fn.alert = d), this;
        }),
        a(document).on("click.bs.alert.data-api", b, c.prototype.close);
    })(window.jQuery),
    +(function (a) {
      "use strict";
      var b = function (c, d) {
        (this.$element = a(c)), (this.options = a.extend({}, b.DEFAULTS, d));
      };
      (b.DEFAULTS = { loadingText: "loading..." }),
        (b.prototype.setState = function (a) {
          var b = "disabled",
            c = this.$element,
            d = c.is("input") ? "val" : "html",
            e = c.data();
          (a += "Text"),
            e.resetText || c.data("resetText", c[d]()),
            c[d](e[a] || this.options[a]),
            setTimeout(function () {
              "loadingText" == a
                ? c.addClass(b).attr(b, b)
                : c.removeClass(b).removeAttr(b);
            }, 0);
        }),
        (b.prototype.toggle = function () {
          var a = this.$element.closest('[data-toggle="buttons"]');
          if (a.length) {
            var b = this.$element
              .find("input")
              .prop("checked", !this.$element.hasClass("active"))
              .trigger("change");
            "radio" === b.prop("type") &&
              a.find(".active").removeClass("active");
          }
          this.$element.toggleClass("active");
        });
      var c = a.fn.button;
      (a.fn.button = function (c) {
        return this.each(function () {
          var d = a(this),
            e = d.data("bs.button"),
            f = "object" == typeof c && c;
          e || d.data("bs.button", (e = new b(this, f))),
            "toggle" == c ? e.toggle() : c && e.setState(c);
        });
      }),
        (a.fn.button.Constructor = b),
        (a.fn.button.noConflict = function () {
          return (a.fn.button = c), this;
        }),
        a(document).on(
          "click.bs.button.data-api",
          "[data-toggle^=button]",
          function (b) {
            var c = a(b.target);
            c.hasClass("btn") || (c = c.closest(".btn")),
              c.button("toggle"),
              b.preventDefault();
          }
        );
    })(window.jQuery),
    +(function (a) {
      "use strict";
      var b = function (b, c) {
        (this.$element = a(b)),
          (this.$indicators = this.$element.find(".carousel-indicators")),
          (this.options = c),
          (this.paused =
            this.sliding =
            this.interval =
            this.$active =
            this.$items =
              null),
          "hover" == this.options.pause &&
            this.$element
              .on("mouseenter", a.proxy(this.pause, this))
              .on("mouseleave", a.proxy(this.cycle, this));
      };
      (b.DEFAULTS = { interval: 5e3, pause: "hover", wrap: !0 }),
        (b.prototype.cycle = function (b) {
          return (
            b || (this.paused = !1),
            this.interval && clearInterval(this.interval),
            this.options.interval &&
              !this.paused &&
              (this.interval = setInterval(
                a.proxy(this.next, this),
                this.options.interval
              )),
            this
          );
        }),
        (b.prototype.getActiveIndex = function () {
          return (
            (this.$active = this.$element.find(".item.active")),
            (this.$items = this.$active.parent().children()),
            this.$items.index(this.$active)
          );
        }),
        (b.prototype.to = function (b) {
          var c = this,
            d = this.getActiveIndex();
          return b > this.$items.length - 1 || 0 > b
            ? void 0
            : this.sliding
            ? this.$element.one("slid", function () {
                c.to(b);
              })
            : d == b
            ? this.pause().cycle()
            : this.slide(b > d ? "next" : "prev", a(this.$items[b]));
        }),
        (b.prototype.pause = function (b) {
          return (
            b || (this.paused = !0),
            this.$element.find(".next, .prev").length &&
              a.support.transition.end &&
              (this.$element.trigger(a.support.transition.end), this.cycle(!0)),
            (this.interval = clearInterval(this.interval)),
            this
          );
        }),
        (b.prototype.next = function () {
          return this.sliding ? void 0 : this.slide("next");
        }),
        (b.prototype.prev = function () {
          return this.sliding ? void 0 : this.slide("prev");
        }),
        (b.prototype.slide = function (b, c) {
          var d = this.$element.find(".item.active"),
            e = c || d[b](),
            f = this.interval,
            g = "next" == b ? "left" : "right",
            h = "next" == b ? "first" : "last",
            i = this;
          if (!e.length) {
            if (!this.options.wrap) return;
            e = this.$element.find(".item")[h]();
          }
          (this.sliding = !0), f && this.pause();
          var j = a.Event("slide.bs.carousel", {
            relatedTarget: e[0],
            direction: g,
          });
          if (!e.hasClass("active")) {
            if (
              (this.$indicators.length &&
                (this.$indicators.find(".active").removeClass("active"),
                this.$element.one("slid", function () {
                  var b = a(i.$indicators.children()[i.getActiveIndex()]);
                  b && b.addClass("active");
                })),
              a.support.transition && this.$element.hasClass("slide"))
            ) {
              if ((this.$element.trigger(j), j.isDefaultPrevented())) return;
              e.addClass(b),
                e[0].offsetWidth,
                d.addClass(g),
                e.addClass(g),
                d
                  .one(a.support.transition.end, function () {
                    e.removeClass([b, g].join(" ")).addClass("active"),
                      d.removeClass(["active", g].join(" ")),
                      (i.sliding = !1),
                      setTimeout(function () {
                        i.$element.trigger("slid");
                      }, 0);
                  })
                  .emulateTransitionEnd(600);
            } else {
              if ((this.$element.trigger(j), j.isDefaultPrevented())) return;
              d.removeClass("active"),
                e.addClass("active"),
                (this.sliding = !1),
                this.$element.trigger("slid");
            }
            return f && this.cycle(), this;
          }
        });
      var c = a.fn.carousel;
      (a.fn.carousel = function (c) {
        return this.each(function () {
          var d = a(this),
            e = d.data("bs.carousel"),
            f = a.extend({}, b.DEFAULTS, d.data(), "object" == typeof c && c),
            g = "string" == typeof c ? c : f.slide;
          e || d.data("bs.carousel", (e = new b(this, f))),
            "number" == typeof c
              ? e.to(c)
              : g
              ? e[g]()
              : f.interval && e.pause().cycle();
        });
      }),
        (a.fn.carousel.Constructor = b),
        (a.fn.carousel.noConflict = function () {
          return (a.fn.carousel = c), this;
        }),
        a(document).on(
          "click.bs.carousel.data-api",
          "[data-slide], [data-slide-to]",
          function (b) {
            var c,
              d = a(this),
              e = a(
                d.attr("data-target") ||
                  ((c = d.attr("href")) && c.replace(/.*(?=#[^\s]+$)/, ""))
              ),
              f = a.extend({}, e.data(), d.data()),
              g = d.attr("data-slide-to");
            g && (f.interval = !1),
              e.carousel(f),
              (g = d.attr("data-slide-to")) && e.data("bs.carousel").to(g),
              b.preventDefault();
          }
        ),
        a(window).on("load", function () {
          a('[data-ride="carousel"]').each(function () {
            var b = a(this);
            b.carousel(b.data());
          });
        });
    })(window.jQuery),
    +(function (a) {
      "use strict";
      var b = function (c, d) {
        (this.$element = a(c)),
          (this.options = a.extend({}, b.DEFAULTS, d)),
          (this.transitioning = null),
          this.options.parent && (this.$parent = a(this.options.parent)),
          this.options.toggle && this.toggle();
      };
      (b.DEFAULTS = { toggle: !0 }),
        (b.prototype.dimension = function () {
          var a = this.$element.hasClass("width");
          return a ? "width" : "height";
        }),
        (b.prototype.show = function () {
          if (!this.transitioning && !this.$element.hasClass("in")) {
            var b = a.Event("show.bs.collapse");
            if ((this.$element.trigger(b), !b.isDefaultPrevented())) {
              var c = this.$parent && this.$parent.find("> .panel > .in");
              if (c && c.length) {
                var d = c.data("bs.collapse");
                if (d && d.transitioning) return;
                c.collapse("hide"), d || c.data("bs.collapse", null);
              }
              var e = this.dimension();
              this.$element
                .removeClass("collapse")
                .addClass("collapsing")
                [e](0),
                (this.transitioning = 1);
              var f = function () {
                this.$element
                  .removeClass("collapsing")
                  .addClass("in")
                  [e]("auto"),
                  (this.transitioning = 0),
                  this.$element.trigger("shown.bs.collapse");
              };
              if (!a.support.transition) return f.call(this);
              var g = a.camelCase(["scroll", e].join("-"));
              this.$element
                .one(a.support.transition.end, a.proxy(f, this))
                .emulateTransitionEnd(350)
                [e](this.$element[0][g]);
            }
          }
        }),
        (b.prototype.hide = function () {
          if (!this.transitioning && this.$element.hasClass("in")) {
            var b = a.Event("hide.bs.collapse");
            if ((this.$element.trigger(b), !b.isDefaultPrevented())) {
              var c = this.dimension();
              this.$element[c](this.$element[c]())[0].offsetHeight,
                this.$element
                  .addClass("collapsing")
                  .removeClass("collapse")
                  .removeClass("in"),
                (this.transitioning = 1);
              var d = function () {
                (this.transitioning = 0),
                  this.$element
                    .trigger("hidden.bs.collapse")
                    .removeClass("collapsing")
                    .addClass("collapse");
              };
              return a.support.transition
                ? (this.$element[c](0)
                    .one(a.support.transition.end, a.proxy(d, this))
                    .emulateTransitionEnd(350),
                  void 0)
                : d.call(this);
            }
          }
        }),
        (b.prototype.toggle = function () {
          this[this.$element.hasClass("in") ? "hide" : "show"]();
        });
      var c = a.fn.collapse;
      (a.fn.collapse = function (c) {
        return this.each(function () {
          var d = a(this),
            e = d.data("bs.collapse"),
            f = a.extend({}, b.DEFAULTS, d.data(), "object" == typeof c && c);
          e || d.data("bs.collapse", (e = new b(this, f))),
            "string" == typeof c && e[c]();
        });
      }),
        (a.fn.collapse.Constructor = b),
        (a.fn.collapse.noConflict = function () {
          return (a.fn.collapse = c), this;
        }),
        a(document).on(
          "click.bs.collapse.data-api",
          "[data-toggle=collapse]",
          function (b) {
            var c,
              d = a(this),
              e =
                d.attr("data-target") ||
                b.preventDefault() ||
                ((c = d.attr("href")) && c.replace(/.*(?=#[^\s]+$)/, "")),
              f = a(e),
              g = f.data("bs.collapse"),
              h = g ? "toggle" : d.data(),
              i = d.attr("data-parent"),
              j = i && a(i);
            (g && g.transitioning) ||
              (j &&
                j
                  .find('[data-toggle=collapse][data-parent="' + i + '"]')
                  .not(d)
                  .addClass("collapsed"),
              d[f.hasClass("in") ? "addClass" : "removeClass"]("collapsed")),
              f.collapse(h);
          }
        );
    })(window.jQuery),
    +(function (a) {
      "use strict";
      function b() {
        a(d).remove(),
          a(e).each(function (b) {
            var d = c(a(this));
            d.hasClass("open") &&
              (d.trigger((b = a.Event("hide.bs.dropdown"))),
              b.isDefaultPrevented() ||
                d.removeClass("open").trigger("hidden.bs.dropdown"));
          });
      }
      function c(b) {
        var c = b.attr("data-target");
        c ||
          ((c = b.attr("href")),
          (c = c && /#/.test(c) && c.replace(/.*(?=#[^\s]*$)/, "")));
        var d = c && a(c);
        return d && d.length ? d : b.parent();
      }
      var d = ".dropdown-backdrop",
        e = "[data-toggle=dropdown]",
        f = function (b) {
          a(b).on("click.bs.dropdown", this.toggle);
        };
      (f.prototype.toggle = function (d) {
        var e = a(this);
        if (!e.is(".disabled, :disabled")) {
          var f = c(e),
            g = f.hasClass("open");
          if ((b(), !g)) {
            if (
              ("ontouchstart" in document.documentElement &&
                !f.closest(".navbar-nav").length &&
                a('<div class="dropdown-backdrop"/>')
                  .insertAfter(a(this))
                  .on("click", b),
              f.trigger((d = a.Event("show.bs.dropdown"))),
              d.isDefaultPrevented())
            )
              return;
            f.toggleClass("open").trigger("shown.bs.dropdown"), e.focus();
          }
          return !1;
        }
      }),
        (f.prototype.keydown = function (b) {
          if (/(38|40|27)/.test(b.keyCode)) {
            var d = a(this);
            if (
              (b.preventDefault(),
              b.stopPropagation(),
              !d.is(".disabled, :disabled"))
            ) {
              var f = c(d),
                g = f.hasClass("open");
              if (!g || (g && 27 == b.keyCode))
                return 27 == b.which && f.find(e).focus(), d.click();
              var h = a("[role=menu] li:not(.divider):visible a", f);
              if (h.length) {
                var i = h.index(h.filter(":focus"));
                38 == b.keyCode && i > 0 && i--,
                  40 == b.keyCode && i < h.length - 1 && i++,
                  ~i || (i = 0),
                  h.eq(i).focus();
              }
            }
          }
        });
      var g = a.fn.dropdown;
      (a.fn.dropdown = function (b) {
        return this.each(function () {
          var c = a(this),
            d = c.data("dropdown");
          d || c.data("dropdown", (d = new f(this))),
            "string" == typeof b && d[b].call(c);
        });
      }),
        (a.fn.dropdown.Constructor = f),
        (a.fn.dropdown.noConflict = function () {
          return (a.fn.dropdown = g), this;
        }),
        a(document)
          .on("click.bs.dropdown.data-api", b)
          .on("click.bs.dropdown.data-api", ".dropdown form", function (a) {
            a.stopPropagation();
          })
          .on("click.bs.dropdown.data-api", e, f.prototype.toggle)
          .on(
            "keydown.bs.dropdown.data-api",
            e + ", [role=menu]",
            f.prototype.keydown
          );
    })(window.jQuery),
    +(function (a) {
      "use strict";
      var b = function (b, c) {
        (this.options = c),
          (this.$element = a(b)),
          (this.$backdrop = this.isShown = null),
          this.options.remote && this.$element.load(this.options.remote);
      };
      (b.DEFAULTS = { backdrop: !0, keyboard: !0, show: !0 }),
        (b.prototype.toggle = function (a) {
          return this[this.isShown ? "hide" : "show"](a);
        }),
        (b.prototype.show = function (b) {
          var c = this,
            d = a.Event("show.bs.modal", { relatedTarget: b });
          this.$element.trigger(d),
            this.isShown ||
              d.isDefaultPrevented() ||
              ((this.isShown = !0),
              this.escape(),
              this.$element.on(
                "click.dismiss.modal",
                '[data-dismiss="modal"]',
                a.proxy(this.hide, this)
              ),
              this.backdrop(function () {
                var d = a.support.transition && c.$element.hasClass("fade");
                c.$element.parent().length ||
                  c.$element.appendTo(document.body),
                  c.$element.show(),
                  d && c.$element[0].offsetWidth,
                  c.$element.addClass("in").attr("aria-hidden", !1),
                  c.enforceFocus();
                var e = a.Event("shown.bs.modal", { relatedTarget: b });
                d
                  ? c.$element
                      .find(".modal-dialog")
                      .one(a.support.transition.end, function () {
                        c.$element.focus().trigger(e);
                      })
                      .emulateTransitionEnd(300)
                  : c.$element.focus().trigger(e);
              }));
        }),
        (b.prototype.hide = function (b) {
          b && b.preventDefault(),
            (b = a.Event("hide.bs.modal")),
            this.$element.trigger(b),
            this.isShown &&
              !b.isDefaultPrevented() &&
              ((this.isShown = !1),
              this.escape(),
              a(document).off("focusin.bs.modal"),
              this.$element
                .removeClass("in")
                .attr("aria-hidden", !0)
                .off("click.dismiss.modal"),
              a.support.transition && this.$element.hasClass("fade")
                ? this.$element
                    .one(
                      a.support.transition.end,
                      a.proxy(this.hideModal, this)
                    )
                    .emulateTransitionEnd(300)
                : this.hideModal());
        }),
        (b.prototype.enforceFocus = function () {
          a(document)
            .off("focusin.bs.modal")
            .on(
              "focusin.bs.modal",
              a.proxy(function (a) {
                this.$element[0] === a.target ||
                  this.$element.has(a.target).length ||
                  this.$element.focus();
              }, this)
            );
        }),
        (b.prototype.escape = function () {
          this.isShown && this.options.keyboard
            ? this.$element.on(
                "keyup.dismiss.bs.modal",
                a.proxy(function (a) {
                  27 == a.which && this.hide();
                }, this)
              )
            : this.isShown || this.$element.off("keyup.dismiss.bs.modal");
        }),
        (b.prototype.hideModal = function () {
          var a = this;
          this.$element.hide(),
            this.backdrop(function () {
              a.removeBackdrop(), a.$element.trigger("hidden.bs.modal");
            });
        }),
        (b.prototype.removeBackdrop = function () {
          this.$backdrop && this.$backdrop.remove(), (this.$backdrop = null);
        }),
        (b.prototype.backdrop = function (b) {
          var c = this.$element.hasClass("fade") ? "fade" : "";
          if (this.isShown && this.options.backdrop) {
            var d = a.support.transition && c;
            if (
              ((this.$backdrop = a(
                '<div class="modal-backdrop ' + c + '" />'
              ).appendTo(document.body)),
              this.$element.on(
                "click.dismiss.modal",
                a.proxy(function (a) {
                  a.target === a.currentTarget &&
                    ("static" == this.options.backdrop
                      ? this.$element[0].focus.call(this.$element[0])
                      : this.hide.call(this));
                }, this)
              ),
              d && this.$backdrop[0].offsetWidth,
              this.$backdrop.addClass("in"),
              !b)
            )
              return;
            d
              ? this.$backdrop
                  .one(a.support.transition.end, b)
                  .emulateTransitionEnd(150)
              : b();
          } else
            !this.isShown && this.$backdrop
              ? (this.$backdrop.removeClass("in"),
                a.support.transition && this.$element.hasClass("fade")
                  ? this.$backdrop
                      .one(a.support.transition.end, b)
                      .emulateTransitionEnd(150)
                  : b())
              : b && b();
        });
      var c = a.fn.modal;
      (a.fn.modal = function (c, d) {
        return this.each(function () {
          var e = a(this),
            f = e.data("bs.modal"),
            g = a.extend({}, b.DEFAULTS, e.data(), "object" == typeof c && c);
          f || e.data("bs.modal", (f = new b(this, g))),
            "string" == typeof c ? f[c](d) : g.show && f.show(d);
        });
      }),
        (a.fn.modal.Constructor = b),
        (a.fn.modal.noConflict = function () {
          return (a.fn.modal = c), this;
        }),
        a(document).on(
          "click.bs.modal.data-api",
          '[data-toggle="modal"]',
          function (b) {
            var c = a(this),
              d = c.attr("href"),
              e = a(
                c.attr("data-target") || (d && d.replace(/.*(?=#[^\s]+$)/, ""))
              ),
              f = e.data("modal")
                ? "toggle"
                : a.extend({ remote: !/#/.test(d) && d }, e.data(), c.data());
            b.preventDefault(),
              e.modal(f, this).one("hide", function () {
                c.is(":visible") && c.focus();
              });
          }
        ),
        a(document)
          .on("show.bs.modal", ".modal", function () {
            a(document.body).addClass("modal-open");
          })
          .on("hidden.bs.modal", ".modal", function () {
            a(document.body).removeClass("modal-open");
          });
    })(window.jQuery),
    +(function (a) {
      "use strict";
      var b = function (a, b) {
        (this.type =
          this.options =
          this.enabled =
          this.timeout =
          this.hoverState =
          this.$element =
            null),
          this.init("tooltip", a, b);
      };
      (b.DEFAULTS = {
        animation: !0,
        placement: "top",
        selector: !1,
        template:
          '<div class="tooltip"><div class="tooltip-arrow"></div><div class="tooltip-inner"></div></div>',
        trigger: "hover focus",
        title: "",
        delay: 0,
        html: !1,
        container: !1,
      }),
        (b.prototype.init = function (b, c, d) {
          (this.enabled = !0),
            (this.type = b),
            (this.$element = a(c)),
            (this.options = this.getOptions(d));
          for (var e = this.options.trigger.split(" "), f = e.length; f--; ) {
            var g = e[f];
            if ("click" == g)
              this.$element.on(
                "click." + this.type,
                this.options.selector,
                a.proxy(this.toggle, this)
              );
            else if ("manual" != g) {
              var h = "hover" == g ? "mouseenter" : "focus",
                i = "hover" == g ? "mouseleave" : "blur";
              this.$element.on(
                h + "." + this.type,
                this.options.selector,
                a.proxy(this.enter, this)
              ),
                this.$element.on(
                  i + "." + this.type,
                  this.options.selector,
                  a.proxy(this.leave, this)
                );
            }
          }
          this.options.selector
            ? (this._options = a.extend({}, this.options, {
                trigger: "manual",
                selector: "",
              }))
            : this.fixTitle();
        }),
        (b.prototype.getDefaults = function () {
          return b.DEFAULTS;
        }),
        (b.prototype.getOptions = function (b) {
          return (
            (b = a.extend({}, this.getDefaults(), this.$element.data(), b)),
            b.delay &&
              "number" == typeof b.delay &&
              (b.delay = { show: b.delay, hide: b.delay }),
            b
          );
        }),
        (b.prototype.getDelegateOptions = function () {
          var b = {},
            c = this.getDefaults();
          return (
            this._options &&
              a.each(this._options, function (a, d) {
                c[a] != d && (b[a] = d);
              }),
            b
          );
        }),
        (b.prototype.enter = function (b) {
          var c =
            b instanceof this.constructor
              ? b
              : a(b.currentTarget)
                  [this.type](this.getDelegateOptions())
                  .data("bs." + this.type);
          return (
            clearTimeout(c.timeout),
            (c.hoverState = "in"),
            c.options.delay && c.options.delay.show
              ? ((c.timeout = setTimeout(function () {
                  "in" == c.hoverState && c.show();
                }, c.options.delay.show)),
                void 0)
              : c.show()
          );
        }),
        (b.prototype.leave = function (b) {
          var c =
            b instanceof this.constructor
              ? b
              : a(b.currentTarget)
                  [this.type](this.getDelegateOptions())
                  .data("bs." + this.type);
          return (
            clearTimeout(c.timeout),
            (c.hoverState = "out"),
            c.options.delay && c.options.delay.hide
              ? ((c.timeout = setTimeout(function () {
                  "out" == c.hoverState && c.hide();
                }, c.options.delay.hide)),
                void 0)
              : c.hide()
          );
        }),
        (b.prototype.show = function () {
          var b = a.Event("show.bs." + this.type);
          if (this.hasContent() && this.enabled) {
            if ((this.$element.trigger(b), b.isDefaultPrevented())) return;
            var c = this.tip();
            this.setContent(), this.options.animation && c.addClass("fade");
            var d =
                "function" == typeof this.options.placement
                  ? this.options.placement.call(this, c[0], this.$element[0])
                  : this.options.placement,
              e = /\s?auto?\s?/i,
              f = e.test(d);
            f && (d = d.replace(e, "") || "top"),
              c.detach().css({ top: 0, left: 0, display: "block" }).addClass(d),
              this.options.container
                ? c.appendTo(this.options.container)
                : c.insertAfter(this.$element);
            var g = this.getPosition(),
              h = c[0].offsetWidth,
              i = c[0].offsetHeight;
            if (f) {
              var j = this.$element.parent(),
                k = d,
                l =
                  document.documentElement.scrollTop || document.body.scrollTop,
                m =
                  "body" == this.options.container
                    ? window.innerWidth
                    : j.outerWidth(),
                n =
                  "body" == this.options.container
                    ? window.innerHeight
                    : j.outerHeight(),
                o = "body" == this.options.container ? 0 : j.offset().left;
              (d =
                "bottom" == d && g.top + g.height + i - l > n
                  ? "top"
                  : "top" == d && g.top - l - i < 0
                  ? "bottom"
                  : "right" == d && g.right + h > m
                  ? "left"
                  : "left" == d && g.left - h < o
                  ? "right"
                  : d),
                c.removeClass(k).addClass(d);
            }
            var p = this.getCalculatedOffset(d, g, h, i);
            this.applyPlacement(p, d),
              this.$element.trigger("shown.bs." + this.type);
          }
        }),
        (b.prototype.applyPlacement = function (a, b) {
          var c,
            d = this.tip(),
            e = d[0].offsetWidth,
            f = d[0].offsetHeight,
            g = parseInt(d.css("margin-top"), 10),
            h = parseInt(d.css("margin-left"), 10);
          isNaN(g) && (g = 0),
            isNaN(h) && (h = 0),
            (a.top = a.top + g),
            (a.left = a.left + h),
            d.offset(a).addClass("in");
          var i = d[0].offsetWidth,
            j = d[0].offsetHeight;
          if (
            ("top" == b && j != f && ((c = !0), (a.top = a.top + f - j)),
            /bottom|top/.test(b))
          ) {
            var k = 0;
            a.left < 0 &&
              ((k = -2 * a.left),
              (a.left = 0),
              d.offset(a),
              (i = d[0].offsetWidth),
              (j = d[0].offsetHeight)),
              this.replaceArrow(k - e + i, i, "left");
          } else this.replaceArrow(j - f, j, "top");
          c && d.offset(a);
        }),
        (b.prototype.replaceArrow = function (a, b, c) {
          this.arrow().css(c, a ? 50 * (1 - a / b) + "%" : "");
        }),
        (b.prototype.setContent = function () {
          var a = this.tip(),
            b = this.getTitle();
          a.find(".tooltip-inner")[this.options.html ? "html" : "text"](b),
            a.removeClass("fade in top bottom left right");
        }),
        (b.prototype.hide = function () {
          function b() {
            "in" != c.hoverState && d.detach();
          }
          var c = this,
            d = this.tip(),
            e = a.Event("hide.bs." + this.type);
          return (
            this.$element.trigger(e),
            e.isDefaultPrevented()
              ? void 0
              : (d.removeClass("in"),
                a.support.transition && this.$tip.hasClass("fade")
                  ? d.one(a.support.transition.end, b).emulateTransitionEnd(150)
                  : b(),
                this.$element.trigger("hidden.bs." + this.type),
                this)
          );
        }),
        (b.prototype.fixTitle = function () {
          var a = this.$element;
          (a.attr("title") ||
            "string" != typeof a.attr("data-original-title")) &&
            a
              .attr("data-original-title", a.attr("title") || "")
              .attr("title", "");
        }),
        (b.prototype.hasContent = function () {
          return this.getTitle();
        }),
        (b.prototype.getPosition = function () {
          var b = this.$element[0];
          return a.extend(
            {},
            "function" == typeof b.getBoundingClientRect
              ? b.getBoundingClientRect()
              : { width: b.offsetWidth, height: b.offsetHeight },
            this.$element.offset()
          );
        }),
        (b.prototype.getCalculatedOffset = function (a, b, c, d) {
          return "bottom" == a
            ? { top: b.top + b.height, left: b.left + b.width / 2 - c / 2 }
            : "top" == a
            ? { top: b.top - d, left: b.left + b.width / 2 - c / 2 }
            : "left" == a
            ? { top: b.top + b.height / 2 - d / 2, left: b.left - c }
            : { top: b.top + b.height / 2 - d / 2, left: b.left + b.width };
        }),
        (b.prototype.getTitle = function () {
          var a,
            b = this.$element,
            c = this.options;
          return (a =
            b.attr("data-original-title") ||
            ("function" == typeof c.title ? c.title.call(b[0]) : c.title));
        }),
        (b.prototype.tip = function () {
          return (this.$tip = this.$tip || a(this.options.template));
        }),
        (b.prototype.arrow = function () {
          return (this.$arrow =
            this.$arrow || this.tip().find(".tooltip-arrow"));
        }),
        (b.prototype.validate = function () {
          this.$element[0].parentNode ||
            (this.hide(), (this.$element = null), (this.options = null));
        }),
        (b.prototype.enable = function () {
          this.enabled = !0;
        }),
        (b.prototype.disable = function () {
          this.enabled = !1;
        }),
        (b.prototype.toggleEnabled = function () {
          this.enabled = !this.enabled;
        }),
        (b.prototype.toggle = function (b) {
          var c = b
            ? a(b.currentTarget)
                [this.type](this.getDelegateOptions())
                .data("bs." + this.type)
            : this;
          c.tip().hasClass("in") ? c.leave(c) : c.enter(c);
        }),
        (b.prototype.destroy = function () {
          this.hide()
            .$element.off("." + this.type)
            .removeData("bs." + this.type);
        });
      var c = a.fn.tooltip;
      (a.fn.tooltip = function (c) {
        return this.each(function () {
          var d = a(this),
            e = d.data("bs.tooltip"),
            f = "object" == typeof c && c;
          e || d.data("bs.tooltip", (e = new b(this, f))),
            "string" == typeof c && e[c]();
        });
      }),
        (a.fn.tooltip.Constructor = b),
        (a.fn.tooltip.noConflict = function () {
          return (a.fn.tooltip = c), this;
        });
    })(window.jQuery),
    +(function (a) {
      "use strict";
      var b = function (a, b) {
        this.init("popover", a, b);
      };
      if (!a.fn.tooltip) throw new Error("Popover requires tooltip.js");
      (b.DEFAULTS = a.extend({}, a.fn.tooltip.Constructor.DEFAULTS, {
        placement: "right",
        trigger: "click",
        content: "",
        template:
          '<div class="popover"><div class="arrow"></div><h3 class="popover-title"></h3><div class="popover-content"></div></div>',
      })),
        (b.prototype = a.extend({}, a.fn.tooltip.Constructor.prototype)),
        (b.prototype.constructor = b),
        (b.prototype.getDefaults = function () {
          return b.DEFAULTS;
        }),
        (b.prototype.setContent = function () {
          var a = this.tip(),
            b = this.getTitle(),
            c = this.getContent();
          a.find(".popover-title")[this.options.html ? "html" : "text"](b),
            a.find(".popover-content")[this.options.html ? "html" : "text"](c),
            a.removeClass("fade top bottom left right in"),
            a.find(".popover-title").html() || a.find(".popover-title").hide();
        }),
        (b.prototype.hasContent = function () {
          return this.getTitle() || this.getContent();
        }),
        (b.prototype.getContent = function () {
          var a = this.$element,
            b = this.options;
          return (
            a.attr("data-content") ||
            ("function" == typeof b.content ? b.content.call(a[0]) : b.content)
          );
        }),
        (b.prototype.arrow = function () {
          return (this.$arrow = this.$arrow || this.tip().find(".arrow"));
        }),
        (b.prototype.tip = function () {
          return this.$tip || (this.$tip = a(this.options.template)), this.$tip;
        });
      var c = a.fn.popover;
      (a.fn.popover = function (c) {
        return this.each(function () {
          var d = a(this),
            e = d.data("bs.popover"),
            f = "object" == typeof c && c;
          e || d.data("bs.popover", (e = new b(this, f))),
            "string" == typeof c && e[c]();
        });
      }),
        (a.fn.popover.Constructor = b),
        (a.fn.popover.noConflict = function () {
          return (a.fn.popover = c), this;
        });
    })(window.jQuery),
    +(function (a) {
      "use strict";
      function b(c, d) {
        var e,
          f = a.proxy(this.process, this);
        (this.$element = a(c).is("body") ? a(window) : a(c)),
          (this.$body = a("body")),
          (this.$scrollElement = this.$element.on(
            "scroll.bs.scroll-spy.data-api",
            f
          )),
          (this.options = a.extend({}, b.DEFAULTS, d)),
          (this.selector =
            (this.options.target ||
              ((e = a(c).attr("href")) && e.replace(/.*(?=#[^\s]+$)/, "")) ||
              "") + " .nav li > a"),
          (this.offsets = a([])),
          (this.targets = a([])),
          (this.activeTarget = null),
          this.refresh(),
          this.process();
      }
      (b.DEFAULTS = { offset: 10 }),
        (b.prototype.refresh = function () {
          var b = this.$element[0] == window ? "offset" : "position";
          (this.offsets = a([])), (this.targets = a([]));
          var c = this;
          this.$body
            .find(this.selector)
            .map(function () {
              var d = a(this),
                e = d.data("target") || d.attr("href"),
                f = /^#\w/.test(e) && a(e);
              return (
                (f &&
                  f.length && [
                    [
                      f[b]().top +
                        (!a.isWindow(c.$scrollElement.get(0)) &&
                          c.$scrollElement.scrollTop()),
                      e,
                    ],
                  ]) ||
                null
              );
            })
            .sort(function (a, b) {
              return a[0] - b[0];
            })
            .each(function () {
              c.offsets.push(this[0]), c.targets.push(this[1]);
            });
        }),
        (b.prototype.process = function () {
          var a,
            b = this.$scrollElement.scrollTop() + this.options.offset,
            c =
              this.$scrollElement[0].scrollHeight || this.$body[0].scrollHeight,
            d = c - this.$scrollElement.height(),
            e = this.offsets,
            f = this.targets,
            g = this.activeTarget;
          if (b >= d) return g != (a = f.last()[0]) && this.activate(a);
          for (a = e.length; a--; )
            g != f[a] &&
              b >= e[a] &&
              (!e[a + 1] || b <= e[a + 1]) &&
              this.activate(f[a]);
        }),
        (b.prototype.activate = function (b) {
          (this.activeTarget = b),
            a(this.selector).parents(".active").removeClass("active");
          var c =
              this.selector +
              '[data-target="' +
              b +
              '"],' +
              this.selector +
              '[href="' +
              b +
              '"]',
            d = a(c).parents("li").addClass("active");
          d.parent(".dropdown-menu").length &&
            (d = d.closest("li.dropdown").addClass("active")),
            d.trigger("activate");
        });
      var c = a.fn.scrollspy;
      (a.fn.scrollspy = function (c) {
        return this.each(function () {
          var d = a(this),
            e = d.data("bs.scrollspy"),
            f = "object" == typeof c && c;
          e || d.data("bs.scrollspy", (e = new b(this, f))),
            "string" == typeof c && e[c]();
        });
      }),
        (a.fn.scrollspy.Constructor = b),
        (a.fn.scrollspy.noConflict = function () {
          return (a.fn.scrollspy = c), this;
        }),
        a(window).on("load", function () {
          a('[data-spy="scroll"]').each(function () {
            var b = a(this);
            b.scrollspy(b.data());
          });
        });
    })(window.jQuery),
    +(function (a) {
      "use strict";
      var b = function (b) {
        this.element = a(b);
      };
      (b.prototype.show = function () {
        var b = this.element,
          c = b.closest("ul:not(.dropdown-menu)"),
          d = b.attr("data-target");
        if (
          (d ||
            ((d = b.attr("href")), (d = d && d.replace(/.*(?=#[^\s]*$)/, ""))),
          !b.parent("li").hasClass("active"))
        ) {
          var e = c.find(".active:last a")[0],
            f = a.Event("show.bs.tab", { relatedTarget: e });
          if ((b.trigger(f), !f.isDefaultPrevented())) {
            var g = a(d);
            this.activate(b.parent("li"), c),
              this.activate(g, g.parent(), function () {
                b.trigger({ type: "shown.bs.tab", relatedTarget: e });
              });
          }
        }
      }),
        (b.prototype.activate = function (b, c, d) {
          function e() {
            f
              .removeClass("active")
              .find("> .dropdown-menu > .active")
              .removeClass("active"),
              b.addClass("active"),
              g ? (b[0].offsetWidth, b.addClass("in")) : b.removeClass("fade"),
              b.parent(".dropdown-menu") &&
                b.closest("li.dropdown").addClass("active"),
              d && d();
          }
          var f = c.find("> .active"),
            g = d && a.support.transition && f.hasClass("fade");
          g
            ? f.one(a.support.transition.end, e).emulateTransitionEnd(150)
            : e(),
            f.removeClass("in");
        });
      var c = a.fn.tab;
      (a.fn.tab = function (c) {
        return this.each(function () {
          var d = a(this),
            e = d.data("bs.tab");
          e || d.data("bs.tab", (e = new b(this))),
            "string" == typeof c && e[c]();
        });
      }),
        (a.fn.tab.Constructor = b),
        (a.fn.tab.noConflict = function () {
          return (a.fn.tab = c), this;
        }),
        a(document).on(
          "click.bs.tab.data-api",
          '[data-toggle="tab"], [data-toggle="pill"]',
          function (b) {
            b.preventDefault(), a(this).tab("show");
          }
        );
    })(window.jQuery),
    +(function (a) {
      "use strict";
      var b = function (c, d) {
        (this.options = a.extend({}, b.DEFAULTS, d)),
          (this.$window = a(window)
            .on("scroll.bs.affix.data-api", a.proxy(this.checkPosition, this))
            .on(
              "click.bs.affix.data-api",
              a.proxy(this.checkPositionWithEventLoop, this)
            )),
          (this.$element = a(c)),
          (this.affixed = this.unpin = null),
          this.checkPosition();
      };
      (b.RESET = "affix affix-top affix-bottom"),
        (b.DEFAULTS = { offset: 0 }),
        (b.prototype.checkPositionWithEventLoop = function () {
          setTimeout(a.proxy(this.checkPosition, this), 1);
        }),
        (b.prototype.checkPosition = function () {
          if (this.$element.is(":visible")) {
            var c = a(document).height(),
              d = this.$window.scrollTop(),
              e = this.$element.offset(),
              f = this.options.offset,
              g = f.top,
              h = f.bottom;
            "object" != typeof f && (h = g = f),
              "function" == typeof g && (g = f.top()),
              "function" == typeof h && (h = f.bottom());
            var i =
              null != this.unpin && d + this.unpin <= e.top
                ? !1
                : null != h && e.top + this.$element.height() >= c - h
                ? "bottom"
                : null != g && g >= d
                ? "top"
                : !1;
            this.affixed !== i &&
              (this.unpin && this.$element.css("top", ""),
              (this.affixed = i),
              (this.unpin = "bottom" == i ? e.top - d : null),
              this.$element
                .removeClass(b.RESET)
                .addClass("affix" + (i ? "-" + i : "")),
              "bottom" == i &&
                this.$element.offset({
                  top: document.body.offsetHeight - h - this.$element.height(),
                }));
          }
        });
      var c = a.fn.affix;
      (a.fn.affix = function (c) {
        return this.each(function () {
          var d = a(this),
            e = d.data("bs.affix"),
            f = "object" == typeof c && c;
          e || d.data("bs.affix", (e = new b(this, f))),
            "string" == typeof c && e[c]();
        });
      }),
        (a.fn.affix.Constructor = b),
        (a.fn.affix.noConflict = function () {
          return (a.fn.affix = c), this;
        }),
        a(window).on("load", function () {
          a('[data-spy="affix"]').each(function () {
            var b = a(this),
              c = b.data();
            (c.offset = c.offset || {}),
              c.offsetBottom && (c.offset.bottom = c.offsetBottom),
              c.offsetTop && (c.offset.top = c.offsetTop),
              b.affix(c);
          });
        });
    })(window.jQuery);
}
/* knob js */ (function (e) {
  if (typeof define === "function" && define.amd) {
    define(["jquery"], e);
  } else {
    e(jQuery);
  }
})(function (e) {
  "use strict";
  var t = {},
    n = Math.max,
    r = Math.min;
  t.c = {};
  t.c.d = e(document);
  t.c.t = function (e) {
    return e.originalEvent.touches.length - 1;
  };
  t.o = function () {
    var n = this;
    this.o = null;
    this.$ = null;
    this.i = null;
    this.g = null;
    this.v = null;
    this.cv = null;
    this.x = 0;
    this.y = 0;
    this.w = 0;
    this.h = 0;
    this.$c = null;
    this.c = null;
    this.t = 0;
    this.isInit = false;
    this.fgColor = null;
    this.pColor = null;
    this.dH = null;
    this.cH = null;
    this.eH = null;
    this.rH = null;
    this.scale = 1;
    this.relative = false;
    this.relativeWidth = false;
    this.relativeHeight = false;
    this.$div = null;
    this.run = function () {
      var t = function (e, t) {
        var r;
        for (r in t) {
          n.o[r] = t[r];
        }
        n._carve().init();
        n._configure()._draw();
      };
      if (this.$.data("kontroled")) return;
      this.$.data("kontroled", true);
      this.extend();
      this.o = e.extend(
        {
          min: this.$.data("min") !== undefined ? this.$.data("min") : 0,
          max: this.$.data("max") !== undefined ? this.$.data("max") : 100,
          stopper: true,
          readOnly:
            this.$.data("readonly") || this.$.attr("readonly") === "readonly",
          cursor:
            (this.$.data("cursor") === true && 30) ||
            this.$.data("cursor") ||
            0,
          thickness:
            (this.$.data("thickness") &&
              Math.max(Math.min(this.$.data("thickness"), 1), 0.01)) ||
            0.35,
          lineCap: this.$.data("linecap") || "butt",
          width: this.$.data("width") || 200,
          height: this.$.data("height") || 200,
          displayInput:
            this.$.data("displayinput") == null || this.$.data("displayinput"),
          displayPrevious: this.$.data("displayprevious"),
          fgColor: this.$.data("fgcolor") || "#87CEEB",
          inputColor: this.$.data("inputcolor"),
          font: this.$.data("font") || "Arial",
          fontWeight: this.$.data("font-weight") || "bold",
          inline: false,
          step: this.$.data("step") || 1,
          rotation: this.$.data("rotation"),
          draw: null,
          change: null,
          cancel: null,
          release: null,
          format: function (e) {
            return e;
          },
          parse: function (e) {
            return parseFloat(e);
          },
        },
        this.o
      );
      this.o.flip =
        this.o.rotation === "anticlockwise" || this.o.rotation === "acw";
      if (!this.o.inputColor) {
        this.o.inputColor = this.o.fgColor;
      }
      if (this.$.is("fieldset")) {
        this.v = {};
        this.i = this.$.find("input");
        this.i.each(function (t) {
          var r = e(this);
          n.i[t] = r;
          n.v[t] = n.o.parse(r.val());
          r.bind("change blur", function () {
            var e = {};
            e[t] = r.val();
            n.val(n._validate(e));
          });
        });
        this.$.find("legend").remove();
      } else {
        this.i = this.$;
        this.v = this.o.parse(this.$.val());
        this.v === "" && (this.v = this.o.min);
        this.$.bind("change blur", function () {
          n.val(n._validate(n.o.parse(n.$.val())));
        });
      }
      !this.o.displayInput && this.$.hide();
      this.$c = e(document.createElement("canvas")).attr({
        width: this.o.width,
        height: this.o.height,
      });
      this.$div = e(
        '<div style="' +
          (this.o.inline ? "display:inline;" : "") +
          "width:" +
          this.o.width +
          "px;height:" +
          this.o.height +
          "px;" +
          '"></div>'
      );
      this.$.wrap(this.$div).before(this.$c);
      this.$div = this.$.parent();
      if (typeof G_vmlCanvasManager !== "undefined") {
        G_vmlCanvasManager.initElement(this.$c[0]);
      }
      this.c = this.$c[0].getContext ? this.$c[0].getContext("2d") : null;
      if (!this.c) {
        throw {
          name: "CanvasNotSupportedException",
          message: "Canvas not supported. Please use excanvas on IE8.0.",
          toString: function () {
            return this.name + ": " + this.message;
          },
        };
      }
      this.scale =
        (window.devicePixelRatio || 1) /
        (this.c.webkitBackingStorePixelRatio ||
          this.c.mozBackingStorePixelRatio ||
          this.c.msBackingStorePixelRatio ||
          this.c.oBackingStorePixelRatio ||
          this.c.backingStorePixelRatio ||
          1);
      this.relativeWidth = this.o.width % 1 !== 0 && this.o.width.indexOf("%");
      this.relativeHeight =
        this.o.height % 1 !== 0 && this.o.height.indexOf("%");
      this.relative = this.relativeWidth || this.relativeHeight;
      this._carve();
      if (this.v instanceof Object) {
        this.cv = {};
        this.copy(this.v, this.cv);
      } else {
        this.cv = this.v;
      }
      this.$.bind("configure", t).parent().bind("configure", t);
      this._listen()._configure()._xy().init();
      this.isInit = true;
      this.$.val(this.o.format(this.v));
      this._draw();
      return this;
    };
    this._carve = function () {
      if (this.relative) {
        var e = this.relativeWidth
            ? (this.$div.parent().width() * parseInt(this.o.width)) / 100
            : this.$div.parent().width(),
          t = this.relativeHeight
            ? (this.$div.parent().height() * parseInt(this.o.height)) / 100
            : this.$div.parent().height();
        this.w = this.h = Math.min(e, t);
      } else {
        this.w = this.o.width;
        this.h = this.o.height;
      }
      this.$div.css({ width: this.w + "px", height: this.h + "px" });
      this.$c.attr({ width: this.w, height: this.h });
      if (this.scale !== 1) {
        this.$c[0].width = this.$c[0].width * this.scale;
        this.$c[0].height = this.$c[0].height * this.scale;
        this.$c.width(this.w);
        this.$c.height(this.h);
      }
      return this;
    };
    this._draw = function () {
      var e = true;
      n.g = n.c;
      n.clear();
      n.dH && (e = n.dH());
      e !== false && n.draw();
    };
    this._touch = function (e) {
      var r = function (e) {
        var t = n.xy2val(
          e.originalEvent.touches[n.t].pageX,
          e.originalEvent.touches[n.t].pageY
        );
        if (t == n.cv) return;
        if (n.cH && n.cH(t) === false) return;
        n.change(n._validate(t));
        n._draw();
      };
      this.t = t.c.t(e);
      r(e);
      t.c.d.bind("touchmove.k", r).bind("touchend.k", function () {
        t.c.d.unbind("touchmove.k touchend.k");
        n.val(n.cv);
      });
      return this;
    };
    this._mouse = function (e) {
      var r = function (e) {
        var t = n.xy2val(e.pageX, e.pageY);
        if (t == n.cv) return;
        if (n.cH && n.cH(t) === false) return;
        n.change(n._validate(t));
        n._draw();
      };
      r(e);
      t.c.d
        .bind("mousemove.k", r)
        .bind("keyup.k", function (e) {
          if (e.keyCode === 27) {
            t.c.d.unbind("mouseup.k mousemove.k keyup.k");
            if (n.eH && n.eH() === false) return;
            n.cancel();
          }
        })
        .bind("mouseup.k", function (e) {
          t.c.d.unbind("mousemove.k mouseup.k keyup.k");
          n.val(n.cv);
        });
      return this;
    };
    this._xy = function () {
      var e = this.$c.offset();
      this.x = e.left;
      this.y = e.top;
      return this;
    };
    this._listen = function () {
      if (!this.o.readOnly) {
        this.$c
          .bind("mousedown", function (e) {
            e.preventDefault();
            n._xy()._mouse(e);
          })
          .bind("touchstart", function (e) {
            e.preventDefault();
            n._xy()._touch(e);
          });
        this.listen();
      } else {
        this.$.attr("readonly", "readonly");
      }
      if (this.relative) {
        e(window).resize(function () {
          n._carve().init();
          n._draw();
        });
      }
      return this;
    };
    this._configure = function () {
      if (this.o.draw) this.dH = this.o.draw;
      if (this.o.change) this.cH = this.o.change;
      if (this.o.cancel) this.eH = this.o.cancel;
      if (this.o.release) this.rH = this.o.release;
      if (this.o.displayPrevious) {
        this.pColor = this.h2rgba(this.o.fgColor, "0.4");
        this.fgColor = this.h2rgba(this.o.fgColor, "0.6");
      } else {
        this.fgColor = this.o.fgColor;
      }
      return this;
    };
    this._clear = function () {
      this.$c[0].width = this.$c[0].width;
    };
    this._validate = function (e) {
      var t = ~~((e < 0 ? -0.5 : 0.5) + e / this.o.step) * this.o.step;
      return Math.round(t * 100) / 100;
    };
    this.listen = function () {};
    this.extend = function () {};
    this.init = function () {};
    this.change = function (e) {};
    this.val = function (e) {};
    this.xy2val = function (e, t) {};
    this.draw = function () {};
    this.clear = function () {
      this._clear();
    };
    this.h2rgba = function (e, t) {
      var n;
      e = e.substring(1, 7);
      n = [
        parseInt(e.substring(0, 2), 16),
        parseInt(e.substring(2, 4), 16),
        parseInt(e.substring(4, 6), 16),
      ];
      return "rgba(" + n[0] + "," + n[1] + "," + n[2] + "," + t + ")";
    };
    this.copy = function (e, t) {
      for (var n in e) {
        t[n] = e[n];
      }
    };
  };
  t.Dial = function () {
    t.o.call(this);
    this.startAngle = null;
    this.xy = null;
    this.radius = null;
    this.lineWidth = null;
    this.cursorExt = null;
    this.w2 = null;
    this.PI2 = 2 * Math.PI;
    this.extend = function () {
      this.o = e.extend(
        {
          bgColor: this.$.data("bgcolor") || "#EEEEEE",
          angleOffset: this.$.data("angleoffset") || 0,
          angleArc: this.$.data("anglearc") || 360,
          inline: true,
        },
        this.o
      );
    };
    this.val = function (e, t) {
      if (null != e) {
        e = this.o.parse(e);
        if (t !== false && e != this.v && this.rH && this.rH(e) === false) {
          return;
        }
        this.cv = this.o.stopper ? n(r(e, this.o.max), this.o.min) : e;
        this.v = this.cv;
        this.$.val(this.o.format(this.v));
        this._draw();
      } else {
        return this.v;
      }
    };
    this.xy2val = function (e, t) {
      var i, s;
      i =
        Math.atan2(e - (this.x + this.w2), -(t - this.y - this.w2)) -
        this.angleOffset;
      if (this.o.flip) {
        i = this.angleArc - i - this.PI2;
      }
      if (this.angleArc != this.PI2 && i < 0 && i > -0.5) {
        i = 0;
      } else if (i < 0) {
        i += this.PI2;
      }
      s = (i * (this.o.max - this.o.min)) / this.angleArc + this.o.min;
      this.o.stopper && (s = n(r(s, this.o.max), this.o.min));
      return s;
    };
    this.listen = function () {
      var t = this,
        i,
        s,
        o = function (e) {
          e.preventDefault();
          var o = e.originalEvent,
            u = o.detail || o.wheelDeltaX,
            a = o.detail || o.wheelDeltaY,
            f =
              t._validate(t.o.parse(t.$.val())) +
              (u > 0 || a > 0 ? t.o.step : u < 0 || a < 0 ? -t.o.step : 0);
          f = n(r(f, t.o.max), t.o.min);
          t.val(f, false);
          if (t.rH) {
            clearTimeout(i);
            i = setTimeout(function () {
              t.rH(f);
              i = null;
            }, 100);
            if (!s) {
              s = setTimeout(function () {
                if (i) t.rH(f);
                s = null;
              }, 200);
            }
          }
        },
        u,
        a,
        f = 1,
        l = { 37: -t.o.step, 38: t.o.step, 39: t.o.step, 40: -t.o.step };
      this.$.bind("keydown", function (i) {
        var s = i.keyCode;
        if (s >= 96 && s <= 105) {
          s = i.keyCode = s - 48;
        }
        u = parseInt(String.fromCharCode(s));
        if (isNaN(u)) {
          s !== 13 &&
            s !== 8 &&
            s !== 9 &&
            s !== 189 &&
            (s !== 190 || t.$.val().match(/\./)) &&
            i.preventDefault();
          if (e.inArray(s, [37, 38, 39, 40]) > -1) {
            i.preventDefault();
            var o = t.o.parse(t.$.val()) + l[s] * f;
            t.o.stopper && (o = n(r(o, t.o.max), t.o.min));
            t.change(t._validate(o));
            t._draw();
            a = window.setTimeout(function () {
              f *= 2;
            }, 30);
          }
        }
      }).bind("keyup", function (e) {
        if (isNaN(u)) {
          if (a) {
            window.clearTimeout(a);
            a = null;
            f = 1;
            t.val(t.$.val());
          }
        } else {
          (t.$.val() > t.o.max && t.$.val(t.o.max)) ||
            (t.$.val() < t.o.min && t.$.val(t.o.min));
        }
      });
      this.$c.bind("mousewheel DOMMouseScroll", o);
      this.$.bind("mousewheel DOMMouseScroll", o);
    };
    this.init = function () {
      if (this.v < this.o.min || this.v > this.o.max) {
        this.v = this.o.min;
      }
      this.$.val(this.v);
      this.w2 = this.w / 2;
      this.cursorExt = this.o.cursor / 100;
      this.xy = this.w2 * this.scale;
      this.lineWidth = this.xy * this.o.thickness;
      this.lineCap = this.o.lineCap;
      this.radius = this.xy - this.lineWidth / 2;
      this.o.angleOffset &&
        (this.o.angleOffset = isNaN(this.o.angleOffset)
          ? 0
          : this.o.angleOffset);
      this.o.angleArc &&
        (this.o.angleArc = isNaN(this.o.angleArc) ? this.PI2 : this.o.angleArc);
      this.angleOffset = (this.o.angleOffset * Math.PI) / 180;
      this.angleArc = (this.o.angleArc * Math.PI) / 180;
      this.startAngle = 1.5 * Math.PI + this.angleOffset;
      this.endAngle = 1.5 * Math.PI + this.angleOffset + this.angleArc;
      var e =
        n(
          String(Math.abs(this.o.max)).length,
          String(Math.abs(this.o.min)).length,
          2
        ) + 2;
      (this.o.displayInput &&
        this.i.css({
          width: ((this.w / 2 + 4) >> 0) + "px",
          height: ((this.w / 3) >> 0) + "px",
          position: "absolute",
          "vertical-align": "middle",
          "margin-top": ((this.w / 3) >> 0) + "px",
          "margin-left": "-" + (((this.w * 3) / 4 + 2) >> 0) + "px",
          border: 0,
          background: "none",
          font:
            this.o.fontWeight + " " + ((this.w / e) >> 0) + "px " + this.o.font,
          "text-align": "center",
          color: this.o.inputColor || this.o.fgColor,
          padding: "0px",
          "-webkit-appearance": "none",
        })) ||
        this.i.css({ width: "0px", visibility: "hidden" });
    };
    this.change = function (e) {
      this.cv = e;
      this.$.val(this.o.format(e));
    };
    this.angle = function (e) {
      return ((e - this.o.min) * this.angleArc) / (this.o.max - this.o.min);
    };
    this.arc = function (e) {
      var t, n;
      e = this.angle(e);
      if (this.o.flip) {
        t = this.endAngle + 1e-5;
        n = t - e - 1e-5;
      } else {
        t = this.startAngle - 1e-5;
        n = t + e + 1e-5;
      }
      this.o.cursor && (t = n - this.cursorExt) && (n = n + this.cursorExt);
      return { s: t, e: n, d: this.o.flip && !this.o.cursor };
    };
    this.draw = function () {
      var e = this.g,
        t = this.arc(this.cv),
        n,
        r = 1;
      e.lineWidth = this.lineWidth;
      e.lineCap = this.lineCap;
      if (this.o.bgColor !== "none") {
        e.beginPath();
        e.strokeStyle = this.o.bgColor;
        e.arc(
          this.xy,
          this.xy,
          this.radius,
          this.endAngle - 1e-5,
          this.startAngle + 1e-5,
          true
        );
        e.stroke();
      }
      if (this.o.displayPrevious) {
        n = this.arc(this.v);
        e.beginPath();
        e.strokeStyle = this.pColor;
        e.arc(this.xy, this.xy, this.radius, n.s, n.e, n.d);
        e.stroke();
        r = this.cv == this.v;
      }
      e.beginPath();
      e.strokeStyle = r ? this.o.fgColor : this.fgColor;
      e.arc(this.xy, this.xy, this.radius, t.s, t.e, t.d);
      e.stroke();
    };
    this.cancel = function () {
      this.val(this.v);
    };
  };
  e.fn.dial = e.fn.knob = function (n) {
    return this.each(function () {
      var r = new t.Dial();
      r.o = n;
      r.$ = e(this);
      r.run();
    }).parent();
  };
});
/* Paraxify js */ !(function (e, t, i) {
  "use strict";
  var o;
  (o = function (i, o) {
    var s, n, r, h, f, g, c;
    return (
      (g = 0),
      (c = 0),
      (r = 0),
      (h = {}),
      (f = []),
      (n = 0),
      (s = function (t, i) {
        this.options = { speed: 1, boost: 0 };
        for (r in i) this.options[r] = i[r];
        if (
          ((this.options.speed < 0 || this.options.speed > 1) &&
            (this.options.speed = 1),
          t || (t = "paraxify"),
          e.getElementsByClassName(t.replace(".", "")))
        )
          this.photos = e.getElementsByClassName(t.replace(".", ""));
        else {
          if (e.querySelector(t) === !1)
            throw new Error(
              "The elements you're trying to select don't exist."
            );
          this.photos = querySelector(t);
        }
        (h = this.options), (f = this.photos), this._init(this);
      }),
      (s.prototype = {
        update: function () {
          for (c = t.innerHeight, r = 0; r < f.length; )
            (f[r].style.backgroundPosition = "center center"),
              (f[r].url = t
                .getComputedStyle(f[r], !1)
                .backgroundImage.replace(/url\((['"])?(.*?)\1\)/gi, "$2")
                .split(",")[0]),
              f[r].img || (f[r].img = new Image()),
              f[r].url !== f[r].img.src &&
                (this._check(r), (f[r].img.src = f[r].url)),
              r++;
          this._animate();
        },
        _init: function () {
          this.update(),
            (t.onscroll = function () {
              this._animate();
            }.bind(this)),
            (t.onresize = function () {
              this.update();
            }.bind(this));
        },
        _check: function (e) {
          var i, o;
          (o = f[e]),
            (o.ok = !0),
            (o.bgSize = t.getComputedStyle(o, !1).backgroundSize),
            (i = c),
            (f[e].img.onload = function () {
              if ("" === o.bgSize || "auto" === o.bgSize) {
                if (this.height < o.offsetHeight)
                  throw (
                    ((o.ok = !1),
                    new Error(
                      "The image " +
                        o.url +
                        " (" +
                        this.height +
                        "px) is too short for that container (" +
                        o.offsetHeight +
                        "px)."
                    ))
                  );
                (i = this.height),
                  this.height < c && (i += (c - o.offsetHeight) * h.speed);
              } else if ("cover" === o.bgSize) {
                if (c < o.offsetHeight)
                  throw (
                    ((o.ok = !1),
                    new Error(
                      "The container (" +
                        o.offsetHeight +
                        "px) can't be bigger than the image (" +
                        c +
                        "px)."
                    ))
                  );
              } else
                "cover" === t.getComputedStyle(o, !1).backgroundSize,
                  this._check(e);
              (o.diff = -(i - o.offsetHeight) * h.speed),
                (o.diff = o.diff - o.offsetHeight * h.boost);
            });
        },
        _visible: function (e) {
          return g + c > f[e].offsetTop &&
            g < f[e].offsetTop + f[e].offsetHeight
            ? !0
            : !1;
        },
        _animate: function () {
          var i, o;
          for (
            g =
              void 0 !== t.pageYOffset
                ? t.pageYOffset
                : (e.documentElement || e.body.parentNode || e.body).scrollTop,
              r = 0;
            r < f.length;

          )
            this._check(r),
              f[r].ok &&
              "fixed" === t.getComputedStyle(f[r], !1).backgroundAttachment &&
              this._visible(r)
                ? ((i = (g - f[r].offsetTop + c) / (f[r].offsetHeight + c)),
                  (o = f[r].diff * (i - 0.5)),
                  "cover" !== f[r].bgSize && (o += (c - f[r].img.height) / 2),
                  (o = Math.round(100 * o) / 100))
                : (o = "center"),
              (f[r].style.backgroundPosition = "center " + o + "px"),
              r++;
        },
      }),
      new s(i, o)
    );
  }),
    (t.paraxify = o);
})(document, window, 0);
/* Owl Carousel */ "function" != typeof Object.create &&
  (Object.create = function (a) {
    function b() {}
    return (b.prototype = a), new b();
  }),
  (function (a, b, c) {
    var d = {
      init: function (b, c) {
        (this.$elem = a(c)),
          (this.options = a.extend(
            {},
            a.fn.owlCarousel.options,
            this.$elem.data(),
            b
          )),
          (this.userOptions = b),
          this.loadContent();
      },
      loadContent: function () {
        function b(a) {
          var b,
            d = "";
          if ("function" == typeof c.options.jsonSuccess)
            c.options.jsonSuccess.apply(this, [a]);
          else {
            for (b in a.owl) a.owl.hasOwnProperty(b) && (d += a.owl[b].item);
            c.$elem.html(d);
          }
          c.logIn();
        }
        var d,
          c = this;
        "function" == typeof c.options.beforeInit &&
          c.options.beforeInit.apply(this, [c.$elem]),
          "string" == typeof c.options.jsonPath
            ? ((d = c.options.jsonPath), a.getJSON(d, b))
            : c.logIn();
      },
      logIn: function () {
        this.$elem.data("owl-originalStyles", this.$elem.attr("style")),
          this.$elem.data("owl-originalClasses", this.$elem.attr("class")),
          this.$elem.css({ opacity: 0 }),
          (this.orignalItems = this.options.items),
          this.checkBrowser(),
          (this.wrapperWidth = 0),
          (this.checkVisible = null),
          this.setVars();
      },
      setVars: function () {
        return (
          0 !== this.$elem.children().length &&
          (this.baseClass(),
          this.eventTypes(),
          (this.$userItems = this.$elem.children()),
          (this.itemsAmount = this.$userItems.length),
          this.wrapItems(),
          (this.$owlItems = this.$elem.find(".owl-item")),
          (this.$owlWrapper = this.$elem.find(".owl-wrapper")),
          (this.playDirection = "next"),
          (this.prevItem = 0),
          (this.prevArr = [0]),
          (this.currentItem = 0),
          this.customEvents(),
          void this.onStartup())
        );
      },
      onStartup: function () {
        this.updateItems(),
          this.calculateAll(),
          this.buildControls(),
          this.updateControls(),
          this.response(),
          this.moveEvents(),
          this.stopOnHover(),
          this.owlStatus(),
          !1 !== this.options.transitionStyle &&
            this.transitionTypes(this.options.transitionStyle),
          !0 === this.options.autoPlay && (this.options.autoPlay = 5e3),
          this.play(),
          this.$elem.find(".owl-wrapper").css("display", "block"),
          this.$elem.is(":visible")
            ? this.$elem.css("opacity", 1)
            : this.watchVisibility(),
          (this.onstartup = !1),
          this.eachMoveUpdate(),
          "function" == typeof this.options.afterInit &&
            this.options.afterInit.apply(this, [this.$elem]);
      },
      eachMoveUpdate: function () {
        !0 === this.options.lazyLoad && this.lazyLoad(),
          !0 === this.options.autoHeight && this.autoHeight(),
          this.onVisibleItems(),
          "function" == typeof this.options.afterAction &&
            this.options.afterAction.apply(this, [this.$elem]);
      },
      updateVars: function () {
        "function" == typeof this.options.beforeUpdate &&
          this.options.beforeUpdate.apply(this, [this.$elem]),
          this.watchVisibility(),
          this.updateItems(),
          this.calculateAll(),
          this.updatePosition(),
          this.updateControls(),
          this.eachMoveUpdate(),
          "function" == typeof this.options.afterUpdate &&
            this.options.afterUpdate.apply(this, [this.$elem]);
      },
      reload: function () {
        var a = this;
        b.setTimeout(function () {
          a.updateVars();
        }, 0);
      },
      watchVisibility: function () {
        var a = this;
        return (
          !1 === a.$elem.is(":visible") &&
          (a.$elem.css({ opacity: 0 }),
          b.clearInterval(a.autoPlayInterval),
          b.clearInterval(a.checkVisible),
          void (a.checkVisible = b.setInterval(function () {
            a.$elem.is(":visible") &&
              (a.reload(),
              a.$elem.animate({ opacity: 1 }, 200),
              b.clearInterval(a.checkVisible));
          }, 500)))
        );
      },
      wrapItems: function () {
        this.$userItems
          .wrapAll('<div class="owl-wrapper">')
          .wrap('<div class="owl-item"></div>'),
          this.$elem
            .find(".owl-wrapper")
            .wrap('<div class="owl-wrapper-outer">'),
          (this.wrapperOuter = this.$elem.find(".owl-wrapper-outer")),
          this.$elem.css("display", "block");
      },
      baseClass: function () {
        var a = this.$elem.hasClass(this.options.baseClass),
          b = this.$elem.hasClass(this.options.theme);
        a || this.$elem.addClass(this.options.baseClass),
          b || this.$elem.addClass(this.options.theme);
      },
      updateItems: function () {
        var b, c;
        if (!1 === this.options.responsive) return !1;
        if (!0 === this.options.singleItem)
          return (
            (this.options.items = this.orignalItems = 1),
            (this.options.itemsCustom = !1),
            (this.options.itemsDesktop = !1),
            (this.options.itemsDesktopSmall = !1),
            (this.options.itemsTablet = !1),
            (this.options.itemsTabletSmall = !1),
            (this.options.itemsMobile = !1)
          );
        if (
          ((b = a(this.options.responsiveBaseWidth).width()),
          b > (this.options.itemsDesktop[0] || this.orignalItems) &&
            (this.options.items = this.orignalItems),
          !1 !== this.options.itemsCustom)
        )
          for (
            this.options.itemsCustom.sort(function (a, b) {
              return a[0] - b[0];
            }),
              c = 0;
            c < this.options.itemsCustom.length;
            c += 1
          )
            this.options.itemsCustom[c][0] <= b &&
              (this.options.items = this.options.itemsCustom[c][1]);
        else
          b <= this.options.itemsDesktop[0] &&
            !1 !== this.options.itemsDesktop &&
            (this.options.items = this.options.itemsDesktop[1]),
            b <= this.options.itemsDesktopSmall[0] &&
              !1 !== this.options.itemsDesktopSmall &&
              (this.options.items = this.options.itemsDesktopSmall[1]),
            b <= this.options.itemsTablet[0] &&
              !1 !== this.options.itemsTablet &&
              (this.options.items = this.options.itemsTablet[1]),
            b <= this.options.itemsTabletSmall[0] &&
              !1 !== this.options.itemsTabletSmall &&
              (this.options.items = this.options.itemsTabletSmall[1]),
            b <= this.options.itemsMobile[0] &&
              !1 !== this.options.itemsMobile &&
              (this.options.items = this.options.itemsMobile[1]);
        this.options.items > this.itemsAmount &&
          !0 === this.options.itemsScaleUp &&
          (this.options.items = this.itemsAmount);
      },
      response: function () {
        var d,
          e,
          c = this;
        return (
          !0 === c.options.responsive &&
          ((e = a(b).width()),
          (c.resizer = function () {
            a(b).width() !== e &&
              (!1 !== c.options.autoPlay && b.clearInterval(c.autoPlayInterval),
              b.clearTimeout(d),
              (d = b.setTimeout(function () {
                (e = a(b).width()), c.updateVars();
              }, c.options.responsiveRefreshRate)));
          }),
          void a(b).resize(c.resizer))
        );
      },
      updatePosition: function () {
        this.jumpTo(this.currentItem),
          !1 !== this.options.autoPlay && this.checkAp();
      },
      appendItemsSizes: function () {
        var b = this,
          c = 0,
          d = b.itemsAmount - b.options.items;
        b.$owlItems.each(function (e) {
          var f = a(this);
          f.css({ width: b.itemWidth }).data("owl-item", Number(e)),
            (0 !== e % b.options.items && e !== d) || e > d || (c += 1),
            f.data("owl-roundPages", c);
        });
      },
      appendWrapperSizes: function () {
        this.$owlWrapper.css({
          width: this.$owlItems.length * this.itemWidth * 2,
          left: 0,
        }),
          this.appendItemsSizes();
      },
      calculateAll: function () {
        this.calculateWidth(),
          this.appendWrapperSizes(),
          this.loops(),
          this.max();
      },
      calculateWidth: function () {
        this.itemWidth = Math.round(this.$elem.width() / this.options.items);
      },
      max: function () {
        var a =
          -1 *
          (this.itemsAmount * this.itemWidth -
            this.options.items * this.itemWidth);
        return (
          this.options.items > this.itemsAmount
            ? (this.maximumPixels = a = this.maximumItem = 0)
            : ((this.maximumItem = this.itemsAmount - this.options.items),
              (this.maximumPixels = a)),
          a
        );
      },
      min: function () {
        return 0;
      },
      loops: function () {
        var d,
          e,
          b = 0,
          c = 0;
        for (
          this.positionsInArray = [0], this.pagesInArray = [], d = 0;
          d < this.itemsAmount;
          d += 1
        )
          (c += this.itemWidth),
            this.positionsInArray.push(-c),
            !0 === this.options.scrollPerPage &&
              ((e = a(this.$owlItems[d])),
              (e = e.data("owl-roundPages")),
              e !== b &&
                ((this.pagesInArray[b] = this.positionsInArray[d]), (b = e)));
      },
      buildControls: function () {
        (!0 !== this.options.navigation && !0 !== this.options.pagination) ||
          (this.owlControls = a('<div class="owl-controls"/>')
            .toggleClass("clickable", !this.browser.isTouch)
            .appendTo(this.$elem)),
          !0 === this.options.pagination && this.buildPagination(),
          !0 === this.options.navigation && this.buildButtons();
      },
      buildButtons: function () {
        var b = this,
          c = a('<div class="owl-buttons"/>');
        b.owlControls.append(c),
          (b.buttonPrev = a("<div/>", {
            class: "owl-prev",
            html: b.options.navigationText[0] || "",
          })),
          (b.buttonNext = a("<div/>", {
            class: "owl-next",
            html: b.options.navigationText[1] || "",
          })),
          c.append(b.buttonPrev).append(b.buttonNext),
          c.on(
            "touchstart.owlControls mousedown.owlControls",
            'div[class^="owl"]',
            function (a) {
              a.preventDefault();
            }
          ),
          c.on(
            "touchend.owlControls mouseup.owlControls",
            'div[class^="owl"]',
            function (c) {
              c.preventDefault(),
                a(this).hasClass("owl-next") ? b.next() : b.prev();
            }
          );
      },
      buildPagination: function () {
        var b = this;
        (b.paginationWrapper = a('<div class="owl-pagination"/>')),
          b.owlControls.append(b.paginationWrapper),
          b.paginationWrapper.on(
            "touchend.owlControls mouseup.owlControls",
            ".owl-page",
            function (c) {
              c.preventDefault(),
                Number(a(this).data("owl-page")) !== b.currentItem &&
                  b.goTo(Number(a(this).data("owl-page")), !0);
            }
          );
      },
      updatePagination: function () {
        var b, c, d, e, f, g;
        if (!1 === this.options.pagination) return !1;
        for (
          this.paginationWrapper.html(""),
            b = 0,
            c = this.itemsAmount - (this.itemsAmount % this.options.items),
            e = 0;
          e < this.itemsAmount;
          e += 1
        )
          0 === e % this.options.items &&
            ((b += 1),
            c === e && (d = this.itemsAmount - this.options.items),
            (f = a("<div/>", { class: "owl-page" })),
            (g = a("<span></span>", {
              text: !0 === this.options.paginationNumbers ? b : "",
              class: !0 === this.options.paginationNumbers ? "owl-numbers" : "",
            })),
            f.append(g),
            f.data("owl-page", c === e ? d : e),
            f.data("owl-roundPages", b),
            this.paginationWrapper.append(f));
        this.checkPagination();
      },
      checkPagination: function () {
        var b = this;
        return (
          !1 !== b.options.pagination &&
          void b.paginationWrapper.find(".owl-page").each(function () {
            a(this).data("owl-roundPages") ===
              a(b.$owlItems[b.currentItem]).data("owl-roundPages") &&
              (b.paginationWrapper.find(".owl-page").removeClass("active"),
              a(this).addClass("active"));
          })
        );
      },
      checkNavigation: function () {
        return (
          !1 !== this.options.navigation &&
          void (
            !1 === this.options.rewindNav &&
            (0 === this.currentItem && 0 === this.maximumItem
              ? (this.buttonPrev.addClass("disabled"),
                this.buttonNext.addClass("disabled"))
              : 0 === this.currentItem && 0 !== this.maximumItem
              ? (this.buttonPrev.addClass("disabled"),
                this.buttonNext.removeClass("disabled"))
              : this.currentItem === this.maximumItem
              ? (this.buttonPrev.removeClass("disabled"),
                this.buttonNext.addClass("disabled"))
              : 0 !== this.currentItem &&
                this.currentItem !== this.maximumItem &&
                (this.buttonPrev.removeClass("disabled"),
                this.buttonNext.removeClass("disabled")))
          )
        );
      },
      updateControls: function () {
        this.updatePagination(),
          this.checkNavigation(),
          this.owlControls &&
            (this.options.items >= this.itemsAmount
              ? this.owlControls.hide()
              : this.owlControls.show());
      },
      destroyControls: function () {
        this.owlControls && this.owlControls.remove();
      },
      next: function (a) {
        if (this.isTransition) return !1;
        if (
          ((this.currentItem +=
            !0 === this.options.scrollPerPage ? this.options.items : 1),
          this.currentItem >
            this.maximumItem +
              (!0 === this.options.scrollPerPage ? this.options.items - 1 : 0))
        ) {
          if (!0 !== this.options.rewindNav)
            return (this.currentItem = this.maximumItem), !1;
          (this.currentItem = 0), (a = "rewind");
        }
        this.goTo(this.currentItem, a);
      },
      prev: function (a) {
        if (this.isTransition) return !1;
        if (
          ((this.currentItem =
            !0 === this.options.scrollPerPage &&
            0 < this.currentItem &&
            this.currentItem < this.options.items
              ? 0
              : this.currentItem -
                (!0 === this.options.scrollPerPage ? this.options.items : 1)),
          0 > this.currentItem)
        ) {
          if (!0 !== this.options.rewindNav) return (this.currentItem = 0), !1;
          (this.currentItem = this.maximumItem), (a = "rewind");
        }
        this.goTo(this.currentItem, a);
      },
      goTo: function (a, c, d) {
        var e = this;
        return (
          !e.isTransition &&
          ("function" == typeof e.options.beforeMove &&
            e.options.beforeMove.apply(this, [e.$elem]),
          a >= e.maximumItem ? (a = e.maximumItem) : 0 >= a && (a = 0),
          (e.currentItem = e.owl.currentItem = a),
          !1 !== e.options.transitionStyle &&
          "drag" !== d &&
          1 === e.options.items &&
          !0 === e.browser.support3d
            ? (e.swapSpeed(0),
              !0 === e.browser.support3d
                ? e.transition3d(e.positionsInArray[a])
                : e.css2slide(e.positionsInArray[a], 1),
              e.afterGo(),
              e.singleItemTransition(),
              !1)
            : ((a = e.positionsInArray[a]),
              !0 === e.browser.support3d
                ? ((e.isCss3Finish = !1),
                  !0 === c
                    ? (e.swapSpeed("paginationSpeed"),
                      b.setTimeout(function () {
                        e.isCss3Finish = !0;
                      }, e.options.paginationSpeed))
                    : "rewind" === c
                    ? (e.swapSpeed(e.options.rewindSpeed),
                      b.setTimeout(function () {
                        e.isCss3Finish = !0;
                      }, e.options.rewindSpeed))
                    : (e.swapSpeed("slideSpeed"),
                      b.setTimeout(function () {
                        e.isCss3Finish = !0;
                      }, e.options.slideSpeed)),
                  e.transition3d(a))
                : !0 === c
                ? e.css2slide(a, e.options.paginationSpeed)
                : "rewind" === c
                ? e.css2slide(a, e.options.rewindSpeed)
                : e.css2slide(a, e.options.slideSpeed),
              void e.afterGo()))
        );
      },
      jumpTo: function (a) {
        "function" == typeof this.options.beforeMove &&
          this.options.beforeMove.apply(this, [this.$elem]),
          a >= this.maximumItem || -1 === a
            ? (a = this.maximumItem)
            : 0 >= a && (a = 0),
          this.swapSpeed(0),
          !0 === this.browser.support3d
            ? this.transition3d(this.positionsInArray[a])
            : this.css2slide(this.positionsInArray[a], 1),
          (this.currentItem = this.owl.currentItem = a),
          this.afterGo();
      },
      afterGo: function () {
        this.prevArr.push(this.currentItem),
          (this.prevItem = this.owl.prevItem =
            this.prevArr[this.prevArr.length - 2]),
          this.prevArr.shift(0),
          this.prevItem !== this.currentItem &&
            (this.checkPagination(),
            this.checkNavigation(),
            this.eachMoveUpdate(),
            !1 !== this.options.autoPlay && this.checkAp()),
          "function" == typeof this.options.afterMove &&
            this.prevItem !== this.currentItem &&
            this.options.afterMove.apply(this, [this.$elem]);
      },
      stop: function () {
        (this.apStatus = "stop"), b.clearInterval(this.autoPlayInterval);
      },
      checkAp: function () {
        "stop" !== this.apStatus && this.play();
      },
      play: function () {
        var a = this;
        return (
          (a.apStatus = "play"),
          !1 !== a.options.autoPlay &&
            (b.clearInterval(a.autoPlayInterval),
            void (a.autoPlayInterval = b.setInterval(function () {
              a.next(!0);
            }, a.options.autoPlay)))
        );
      },
      swapSpeed: function (a) {
        "slideSpeed" === a
          ? this.$owlWrapper.css(this.addCssSpeed(this.options.slideSpeed))
          : "paginationSpeed" === a
          ? this.$owlWrapper.css(this.addCssSpeed(this.options.paginationSpeed))
          : "string" != typeof a && this.$owlWrapper.css(this.addCssSpeed(a));
      },
      addCssSpeed: function (a) {
        return {
          "-webkit-transition": "all " + a + "ms ease",
          "-moz-transition": "all " + a + "ms ease",
          "-o-transition": "all " + a + "ms ease",
          transition: "all " + a + "ms ease",
        };
      },
      removeTransition: function () {
        return {
          "-webkit-transition": "",
          "-moz-transition": "",
          "-o-transition": "",
          transition: "",
        };
      },
      doTranslate: function (a) {
        return {
          "-webkit-transform": "translate3d(" + a + "px, 0px, 0px)",
          "-moz-transform": "translate3d(" + a + "px, 0px, 0px)",
          "-o-transform": "translate3d(" + a + "px, 0px, 0px)",
          "-ms-transform": "translate3d(" + a + "px, 0px, 0px)",
          transform: "translate3d(" + a + "px, 0px,0px)",
        };
      },
      transition3d: function (a) {
        this.$owlWrapper.css(this.doTranslate(a));
      },
      css2move: function (a) {
        this.$owlWrapper.css({ left: a });
      },
      css2slide: function (a, b) {
        var c = this;
        (c.isCssFinish = !1),
          c.$owlWrapper.stop(!0, !0).animate(
            { left: a },
            {
              duration: b || c.options.slideSpeed,
              complete: function () {
                c.isCssFinish = !0;
              },
            }
          );
      },
      checkBrowser: function () {
        var a = c.createElement("div");
        (a.style.cssText =
          "  -moz-transform:translate3d(0px, 0px, 0px); -ms-transform:translate3d(0px, 0px, 0px); -o-transform:translate3d(0px, 0px, 0px); -webkit-transform:translate3d(0px, 0px, 0px); transform:translate3d(0px, 0px, 0px)"),
          (a = a.style.cssText.match(/translate3d\(0px, 0px, 0px\)/g)),
          (this.browser = {
            support3d: null !== a && 1 === a.length,
            isTouch: "ontouchstart" in b || b.navigator.msMaxTouchPoints,
          });
      },
      moveEvents: function () {
        (!1 === this.options.mouseDrag && !1 === this.options.touchDrag) ||
          (this.gestures(), this.disabledEvents());
      },
      eventTypes: function () {
        var a = ["s", "e", "x"];
        (this.ev_types = {}),
          !0 === this.options.mouseDrag && !0 === this.options.touchDrag
            ? (a = [
                "touchstart.owl mousedown.owl",
                "touchmove.owl mousemove.owl",
                "touchend.owl touchcancel.owl mouseup.owl",
              ])
            : !1 === this.options.mouseDrag && !0 === this.options.touchDrag
            ? (a = [
                "touchstart.owl",
                "touchmove.owl",
                "touchend.owl touchcancel.owl",
              ])
            : !0 === this.options.mouseDrag &&
              !1 === this.options.touchDrag &&
              (a = ["mousedown.owl", "mousemove.owl", "mouseup.owl"]),
          (this.ev_types.start = a[0]),
          (this.ev_types.move = a[1]),
          (this.ev_types.end = a[2]);
      },
      disabledEvents: function () {
        this.$elem.on("dragstart.owl", function (a) {
          a.preventDefault();
        }),
          this.$elem.on("mousedown.disableTextSelect", function (b) {
            return a(b.target).is("input, textarea, select, option");
          });
      },
      gestures: function () {
        function d(a) {
          if (void 0 !== a.touches)
            return { x: a.touches[0].pageX, y: a.touches[0].pageY };
          if (void 0 === a.touches) {
            if (void 0 !== a.pageX) return { x: a.pageX, y: a.pageY };
            if (void 0 === a.pageX) return { x: a.clientX, y: a.clientY };
          }
        }
        function e(b) {
          "on" === b
            ? (a(c).on(h.ev_types.move, f), a(c).on(h.ev_types.end, g))
            : "off" === b &&
              (a(c).off(h.ev_types.move), a(c).off(h.ev_types.end));
        }
        function f(e) {
          (e = e.originalEvent || e || b.event),
            (h.newPosX = d(e).x - i.offsetX),
            (h.newPosY = d(e).y - i.offsetY),
            (h.newRelativeX = h.newPosX - i.relativePos),
            "function" == typeof h.options.startDragging &&
              !0 !== i.dragging &&
              0 !== h.newRelativeX &&
              ((i.dragging = !0), h.options.startDragging.apply(h, [h.$elem])),
            (8 < h.newRelativeX || -8 > h.newRelativeX) &&
              !0 === h.browser.isTouch &&
              (void 0 !== e.preventDefault
                ? e.preventDefault()
                : (e.returnValue = !1),
              (i.sliding = !0)),
            (10 < h.newPosY || -10 > h.newPosY) &&
              !1 === i.sliding &&
              a(c).off("touchmove.owl"),
            (h.newPosX = Math.max(
              Math.min(h.newPosX, h.newRelativeX / 5),
              h.maximumPixels + h.newRelativeX / 5
            )),
            !0 === h.browser.support3d
              ? h.transition3d(h.newPosX)
              : h.css2move(h.newPosX);
        }
        function g(c) {
          c = c.originalEvent || c || b.event;
          var d;
          (c.target = c.target || c.srcElement),
            (i.dragging = !1),
            !0 !== h.browser.isTouch && h.$owlWrapper.removeClass("grabbing"),
            (h.dragDirection =
              0 > h.newRelativeX
                ? (h.owl.dragDirection = "left")
                : (h.owl.dragDirection = "right")),
            0 !== h.newRelativeX &&
              ((d = h.getNewPosition()),
              h.goTo(d, !1, "drag"),
              i.targetElement === c.target &&
                !0 !== h.browser.isTouch &&
                (a(c.target).on("click.disable", function (b) {
                  b.stopImmediatePropagation(),
                    b.stopPropagation(),
                    b.preventDefault(),
                    a(b.target).off("click.disable");
                }),
                (c = a._data(c.target, "events").click),
                (d = c.pop()),
                c.splice(0, 0, d))),
            e("off");
        }
        var h = this,
          i = {
            offsetX: 0,
            offsetY: 0,
            baseElWidth: 0,
            relativePos: 0,
            position: null,
            minSwipe: null,
            maxSwipe: null,
            sliding: null,
            dargging: null,
            targetElement: null,
          };
        (h.isCssFinish = !0),
          h.$elem.on(h.ev_types.start, ".owl-wrapper", function (c) {
            c = c.originalEvent || c || b.event;
            var f;
            if (3 === c.which) return !1;
            if (!(h.itemsAmount <= h.options.items)) {
              if (
                (!1 === h.isCssFinish && !h.options.dragBeforeAnimFinish) ||
                (!1 === h.isCss3Finish && !h.options.dragBeforeAnimFinish)
              )
                return !1;
              !1 !== h.options.autoPlay && b.clearInterval(h.autoPlayInterval),
                !0 === h.browser.isTouch ||
                  h.$owlWrapper.hasClass("grabbing") ||
                  h.$owlWrapper.addClass("grabbing"),
                (h.newPosX = 0),
                (h.newRelativeX = 0),
                a(this).css(h.removeTransition()),
                (f = a(this).position()),
                (i.relativePos = f.left),
                (i.offsetX = d(c).x - f.left),
                (i.offsetY = d(c).y - f.top),
                e("on"),
                (i.sliding = !1),
                (i.targetElement = c.target || c.srcElement);
            }
          });
      },
      getNewPosition: function () {
        var a = this.closestItem();
        return (
          a > this.maximumItem
            ? (a = this.currentItem = this.maximumItem)
            : 0 <= this.newPosX && (this.currentItem = a = 0),
          a
        );
      },
      closestItem: function () {
        var b = this,
          c =
            !0 === b.options.scrollPerPage
              ? b.pagesInArray
              : b.positionsInArray,
          d = b.newPosX,
          e = null;
        return (
          a.each(c, function (f, g) {
            d - b.itemWidth / 20 > c[f + 1] &&
            d - b.itemWidth / 20 < g &&
            "left" === b.moveDirection()
              ? ((e = g),
                (b.currentItem =
                  !0 === b.options.scrollPerPage
                    ? a.inArray(e, b.positionsInArray)
                    : f))
              : d + b.itemWidth / 20 < g &&
                d + b.itemWidth / 20 > (c[f + 1] || c[f] - b.itemWidth) &&
                "right" === b.moveDirection() &&
                (!0 === b.options.scrollPerPage
                  ? ((e = c[f + 1] || c[c.length - 1]),
                    (b.currentItem = a.inArray(e, b.positionsInArray)))
                  : ((e = c[f + 1]), (b.currentItem = f + 1)));
          }),
          b.currentItem
        );
      },
      moveDirection: function () {
        var a;
        return (
          0 > this.newRelativeX
            ? ((a = "right"), (this.playDirection = "next"))
            : ((a = "left"), (this.playDirection = "prev")),
          a
        );
      },
      customEvents: function () {
        var a = this;
        a.$elem.on("owl.next", function () {
          a.next();
        }),
          a.$elem.on("owl.prev", function () {
            a.prev();
          }),
          a.$elem.on("owl.play", function (b, c) {
            (a.options.autoPlay = c), a.play(), (a.hoverStatus = "play");
          }),
          a.$elem.on("owl.stop", function () {
            a.stop(), (a.hoverStatus = "stop");
          }),
          a.$elem.on("owl.goTo", function (b, c) {
            a.goTo(c);
          }),
          a.$elem.on("owl.jumpTo", function (b, c) {
            a.jumpTo(c);
          });
      },
      stopOnHover: function () {
        var a = this;
        !0 === a.options.stopOnHover &&
          !0 !== a.browser.isTouch &&
          !1 !== a.options.autoPlay &&
          (a.$elem.on("mouseover", function () {
            a.stop();
          }),
          a.$elem.on("mouseout", function () {
            "stop" !== a.hoverStatus && a.play();
          }));
      },
      lazyLoad: function () {
        var b, c, d, e, f;
        if (!1 === this.options.lazyLoad) return !1;
        for (b = 0; b < this.itemsAmount; b += 1)
          (c = a(this.$owlItems[b])),
            "loaded" !== c.data("owl-loaded") &&
              ((d = c.data("owl-item")),
              (e = c.find(".lazyOwl")),
              "string" != typeof e.data("src")
                ? c.data("owl-loaded", "loaded")
                : (void 0 === c.data("owl-loaded") &&
                    (e.hide(),
                    c.addClass("loading").data("owl-loaded", "checked")),
                  (f =
                    !0 !== this.options.lazyFollow || d >= this.currentItem) &&
                    d < this.currentItem + this.options.items &&
                    e.length &&
                    this.lazyPreload(c, e)));
      },
      lazyPreload: function (a, c) {
        function d() {
          a.data("owl-loaded", "loaded").removeClass("loading"),
            c.removeAttr("data-src"),
            "fade" === f.options.lazyEffect ? c.fadeIn(400) : c.show(),
            "function" == typeof f.options.afterLazyLoad &&
              f.options.afterLazyLoad.apply(this, [f.$elem]);
        }
        function e() {
          (g += 1),
            f.completeImg(c.get(0)) || !0 === h
              ? d()
              : 100 >= g
              ? b.setTimeout(e, 100)
              : d();
        }
        var h,
          f = this,
          g = 0;
        "DIV" === c.prop("tagName")
          ? (c.css("background-image", "url(" + c.data("src") + ")"), (h = !0))
          : (c[0].src = c.data("src")),
          e();
      },
      autoHeight: function () {
        function c() {
          var c = a(e.$owlItems[e.currentItem]).height();
          e.wrapperOuter.css("height", c + "px"),
            e.wrapperOuter.hasClass("autoHeight") ||
              b.setTimeout(function () {
                e.wrapperOuter.addClass("autoHeight");
              }, 0);
        }
        function d() {
          (g += 1),
            e.completeImg(f.get(0))
              ? c()
              : 100 >= g
              ? b.setTimeout(d, 100)
              : e.wrapperOuter.css("height", "");
        }
        var g,
          e = this,
          f = a(e.$owlItems[e.currentItem]).find("img");
        void 0 !== f.get(0) ? ((g = 0), d()) : c();
      },
      completeImg: function (a) {
        return !(
          !a.complete ||
          ("undefined" != typeof a.naturalWidth && 0 === a.naturalWidth)
        );
      },
      onVisibleItems: function () {
        var b;
        for (
          !0 === this.options.addClassActive &&
            this.$owlItems.removeClass("active"),
            this.visibleItems = [],
            b = this.currentItem;
          b < this.currentItem + this.options.items;
          b += 1
        )
          this.visibleItems.push(b),
            !0 === this.options.addClassActive &&
              a(this.$owlItems[b]).addClass("active");
        this.owl.visibleItems = this.visibleItems;
      },
      transitionTypes: function (a) {
        (this.outClass = "owl-" + a + "-out"),
          (this.inClass = "owl-" + a + "-in");
      },
      singleItemTransition: function () {
        var a = this,
          b = a.outClass,
          c = a.inClass,
          d = a.$owlItems.eq(a.currentItem),
          e = a.$owlItems.eq(a.prevItem),
          f =
            Math.abs(a.positionsInArray[a.currentItem]) +
            a.positionsInArray[a.prevItem],
          g = Math.abs(a.positionsInArray[a.currentItem]) + a.itemWidth / 2;
        (a.isTransition = !0),
          a.$owlWrapper
            .addClass("owl-origin")
            .css({
              "-webkit-transform-origin": g + "px",
              "-moz-perspective-origin": g + "px",
              "perspective-origin": g + "px",
            }),
          e
            .css({ position: "relative", left: f + "px" })
            .addClass(b)
            .on(
              "webkitAnimationEnd oAnimationEnd MSAnimationEnd animationend",
              function () {
                (a.endPrev = !0),
                  e.off(
                    "webkitAnimationEnd oAnimationEnd MSAnimationEnd animationend"
                  ),
                  a.clearTransStyle(e, b);
              }
            ),
          d
            .addClass(c)
            .on(
              "webkitAnimationEnd oAnimationEnd MSAnimationEnd animationend",
              function () {
                (a.endCurrent = !0),
                  d.off(
                    "webkitAnimationEnd oAnimationEnd MSAnimationEnd animationend"
                  ),
                  a.clearTransStyle(d, c);
              }
            );
      },
      clearTransStyle: function (a, b) {
        a.css({ position: "", left: "" }).removeClass(b),
          this.endPrev &&
            this.endCurrent &&
            (this.$owlWrapper.removeClass("owl-origin"),
            (this.isTransition = this.endCurrent = this.endPrev = !1));
      },
      owlStatus: function () {
        this.owl = {
          userOptions: this.userOptions,
          baseElement: this.$elem,
          userItems: this.$userItems,
          owlItems: this.$owlItems,
          currentItem: this.currentItem,
          prevItem: this.prevItem,
          visibleItems: this.visibleItems,
          isTouch: this.browser.isTouch,
          browser: this.browser,
          dragDirection: this.dragDirection,
        };
      },
      clearEvents: function () {
        this.$elem.off(".owl owl mousedown.disableTextSelect"),
          a(c).off(".owl owl"),
          a(b).off("resize", this.resizer);
      },
      unWrap: function () {
        0 !== this.$elem.children().length &&
          (this.$owlWrapper.unwrap(),
          this.$userItems.unwrap().unwrap(),
          this.owlControls && this.owlControls.remove()),
          this.clearEvents(),
          this.$elem
            .attr("style", this.$elem.data("owl-originalStyles") || "")
            .attr("class", this.$elem.data("owl-originalClasses"));
      },
      destroy: function () {
        this.stop(),
          b.clearInterval(this.checkVisible),
          this.unWrap(),
          this.$elem.removeData();
      },
      reinit: function (b) {
        (b = a.extend({}, this.userOptions, b)),
          this.unWrap(),
          this.init(b, this.$elem);
      },
      addItem: function (a, b) {
        var c;
        return (
          !!a &&
          (0 === this.$elem.children().length
            ? (this.$elem.append(a), this.setVars(), !1)
            : (this.unWrap(),
              (c = void 0 === b || -1 === b ? -1 : b),
              c >= this.$userItems.length || -1 === c
                ? this.$userItems.eq(-1).after(a)
                : this.$userItems.eq(c).before(a),
              void this.setVars()))
        );
      },
      removeItem: function (a) {
        return (
          0 !== this.$elem.children().length &&
          ((a = void 0 === a || -1 === a ? -1 : a),
          this.unWrap(),
          this.$userItems.eq(a).remove(),
          void this.setVars())
        );
      },
    };
    (a.fn.owlCarousel = function (b) {
      return this.each(function () {
        if (!0 === a(this).data("owl-init")) return !1;
        a(this).data("owl-init", !0);
        var c = Object.create(d);
        c.init(b, this), a.data(this, "owlCarousel", c);
      });
    }),
      (a.fn.owlCarousel.options = {
        items: 5,
        itemsCustom: !1,
        itemsDesktop: [1199, 4],
        itemsDesktopSmall: [979, 3],
        itemsTablet: [768, 2],
        itemsTabletSmall: !1,
        itemsMobile: [479, 1],
        singleItem: !1,
        itemsScaleUp: !1,
        slideSpeed: 200,
        paginationSpeed: 800,
        rewindSpeed: 1e3,
        autoPlay: !1,
        stopOnHover: !1,
        navigation: !1,
        navigationText: ["prev", "next"],
        rewindNav: !0,
        scrollPerPage: !1,
        pagination: !0,
        paginationNumbers: !1,
        responsive: !0,
        responsiveRefreshRate: 200,
        responsiveBaseWidth: b,
        baseClass: "owl-carousel",
        theme: "owl-theme",
        lazyLoad: !1,
        lazyFollow: !0,
        lazyEffect: "fade",
        autoHeight: !1,
        jsonPath: !1,
        jsonSuccess: !1,
        dragBeforeAnimFinish: !0,
        mouseDrag: !0,
        touchDrag: !0,
        addClassActive: !1,
        transitionStyle: !1,
        beforeUpdate: !1,
        afterUpdate: !1,
        beforeInit: !1,
        afterInit: !1,
        beforeMove: !1,
        afterMove: !1,
        afterAction: !1,
        startDragging: !1,
        afterLazyLoad: !1,
      });
  })(jQuery, window, document);
/* Equal Height */ !(function (t) {
  "use strict";
  "function" == typeof define && define.amd
    ? define(["jquery"], t)
    : "undefined" != typeof module && module.exports
    ? (module.exports = t(require("jquery")))
    : t(jQuery);
})(function (t) {
  var e = -1,
    o = -1,
    a = function (t) {
      return parseFloat(t) || 0;
    },
    i = function (e) {
      var o = 1,
        i = t(e),
        n = null,
        r = [];
      return (
        i.each(function () {
          var e = t(this),
            i = e.offset().top - a(e.css("margin-top")),
            s = r.length > 0 ? r[r.length - 1] : null;
          null === s
            ? r.push(e)
            : Math.floor(Math.abs(n - i)) <= o
            ? (r[r.length - 1] = s.add(e))
            : r.push(e),
            (n = i);
        }),
        r
      );
    },
    n = function (e) {
      var o = { byRow: !0, property: "height", target: null, remove: !1 };
      return "object" == typeof e
        ? t.extend(o, e)
        : ("boolean" == typeof e
            ? (o.byRow = e)
            : "remove" === e && (o.remove = !0),
          o);
    },
    r = (t.fn.matchHeight = function (e) {
      var o = n(e);
      if (o.remove) {
        var a = this;
        return (
          this.css(o.property, ""),
          t.each(r._groups, function (t, e) {
            e.elements = e.elements.not(a);
          }),
          this
        );
      }
      return this.length <= 1 && !o.target
        ? this
        : (r._groups.push({ elements: this, options: o }),
          r._apply(this, o),
          this);
    });
  (r.version = "master"),
    (r._groups = []),
    (r._throttle = 80),
    (r._maintainScroll = !1),
    (r._beforeUpdate = null),
    (r._afterUpdate = null),
    (r._rows = i),
    (r._parse = a),
    (r._parseOptions = n),
    (r._apply = function (e, o) {
      var s = n(o),
        h = t(e),
        l = [h],
        c = t(window).scrollTop(),
        p = t("html").outerHeight(!0),
        d = h.parents().filter(":hidden");
      return (
        d.each(function () {
          var e = t(this);
          e.data("style-cache", e.attr("style"));
        }),
        d.css("display", "block"),
        s.byRow &&
          !s.target &&
          (h.each(function () {
            var e = t(this),
              o = e.css("display");
            "inline-block" !== o &&
              "flex" !== o &&
              "inline-flex" !== o &&
              (o = "block"),
              e.data("style-cache", e.attr("style")),
              e.css({
                display: o,
                "padding-top": "0",
                "padding-bottom": "0",
                "margin-top": "0",
                "margin-bottom": "0",
                "border-top-width": "0",
                "border-bottom-width": "0",
                height: "100px",
                overflow: "hidden",
              });
          }),
          (l = i(h)),
          h.each(function () {
            var e = t(this);
            e.attr("style", e.data("style-cache") || "");
          })),
        t.each(l, function (e, o) {
          var i = t(o),
            n = 0;
          if (s.target) n = s.target.outerHeight(!1);
          else {
            if (s.byRow && i.length <= 1) return void i.css(s.property, "");
            i.each(function () {
              var e = t(this),
                o = e.attr("style"),
                a = e.css("display");
              "inline-block" !== a &&
                "flex" !== a &&
                "inline-flex" !== a &&
                (a = "block");
              var i = { display: a };
              (i[s.property] = ""),
                e.css(i),
                e.outerHeight(!1) > n && (n = e.outerHeight(!1)),
                o ? e.attr("style", o) : e.css("display", "");
            });
          }
          i.each(function () {
            var e = t(this),
              o = 0;
            (s.target && e.is(s.target)) ||
              ("border-box" !== e.css("box-sizing") &&
                ((o +=
                  a(e.css("border-top-width")) +
                  a(e.css("border-bottom-width"))),
                (o += a(e.css("padding-top")) + a(e.css("padding-bottom")))),
              e.css(s.property, n - o + "px"));
          });
        }),
        d.each(function () {
          var e = t(this);
          e.attr("style", e.data("style-cache") || null);
        }),
        r._maintainScroll &&
          t(window).scrollTop((c / p) * t("html").outerHeight(!0)),
        this
      );
    }),
    (r._applyDataApi = function () {
      var e = {};
      t("[data-match-height], [data-mh]").each(function () {
        var o = t(this),
          a = o.attr("data-mh") || o.attr("data-match-height");
        a in e ? (e[a] = e[a].add(o)) : (e[a] = o);
      }),
        t.each(e, function () {
          this.matchHeight(!0);
        });
    });
  var s = function (e) {
    r._beforeUpdate && r._beforeUpdate(e, r._groups),
      t.each(r._groups, function () {
        r._apply(this.elements, this.options);
      }),
      r._afterUpdate && r._afterUpdate(e, r._groups);
  };
  (r._update = function (a, i) {
    if (i && "resize" === i.type) {
      var n = t(window).width();
      if (n === e) return;
      e = n;
    }
    a
      ? -1 === o &&
        (o = setTimeout(function () {
          s(i), (o = -1);
        }, r._throttle))
      : s(i);
  }),
    t(r._applyDataApi),
    t(window).bind("load", function (t) {
      r._update(!1, t);
    }),
    t(window).bind("resize orientationchange", function (t) {
      r._update(!0, t);
    });
});
/* parallax js */ !(function (t) {
  t.fn.extend({
    mouseParallax: function (e) {
      var o = { moveFactor: 5, zIndexValue: "-1", targetContainer: "body" },
        e = t.extend(o, e);
      return this.each(function () {
        var o = e,
          n = t(this);
        t(o.targetContainer).on("mousemove", function (e) {
          (mouseX = e.pageX),
            (mouseY = e.pageY),
            (windowWidth = t(window).width()),
            (windowHeight = t(window).height()),
            (percentX =
              (mouseX / windowWidth) * o.moveFactor - o.moveFactor / 2),
            (percentY =
              (mouseY / windowHeight) * o.moveFactor - o.moveFactor / 2),
            (leftString = 0 - percentX - o.moveFactor + "%"),
            (rightString = 0 - percentX - o.moveFactor + "%"),
            (topString = 0 - percentY - o.moveFactor + "%"),
            (bottomString = 0 - percentY - o.moveFactor + "%"),
            (n[0].style.left = leftString),
            (n[0].style.right = rightString),
            (n[0].style.top = topString),
            (n[0].style.bottom = bottomString),
            o.zIndexValue && (n[0].style.zIndex = o.zIndexValue);
        });
      });
    },
  });
})(jQuery);

(function(){var t,e,s,i,r,o={}.hasOwnProperty,n=function(t,e){function s(){this.constructor=t}for(var i in e)o.call(e,i)&&(t[i]=e[i]);return s.prototype=e.prototype,t.prototype=new s,t.__super__=e.prototype,t};i=function(){function t(){this.options_index=0,this.parsed=[]}return t.prototype.add_node=function(t){return"OPTGROUP"===t.nodeName.toUpperCase()?this.add_group(t):this.add_option(t)},t.prototype.add_group=function(t){var e,s,i,r,o,n;for(e=this.parsed.length,this.parsed.push({array_index:e,group:!0,label:this.escapeExpression(t.label),title:t.title?t.title:void 0,children:0,disabled:t.disabled,classes:t.className}),o=t.childNodes,n=[],i=0,r=o.length;r>i;i++)s=o[i],n.push(this.add_option(s,e,t.disabled));return n},t.prototype.add_option=function(t,e,s){return"OPTION"===t.nodeName.toUpperCase()?(""!==t.text?(null!=e&&(this.parsed[e].children+=1),this.parsed.push({array_index:this.parsed.length,options_index:this.options_index,value:t.value,text:t.text,html:t.innerHTML,title:t.title?t.title:void 0,selected:t.selected,disabled:s===!0?s:t.disabled,group_array_index:e,group_label:null!=e?this.parsed[e].label:null,classes:t.className,style:t.style.cssText})):this.parsed.push({array_index:this.parsed.length,options_index:this.options_index,empty:!0}),this.options_index+=1):void 0},t.prototype.escapeExpression=function(t){var e,s;return null==t||t===!1?"":/[\&\<\>\"\'\`]/.test(t)?(e={"<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#x27;","`":"&#x60;"},s=/&(?!\w+;)|[\<\>\"\'\`]/g,t.replace(s,function(t){return e[t]||"&amp;"})):t},t}(),i.select_to_array=function(t){var e,s,r,o,n;for(s=new i,n=t.childNodes,r=0,o=n.length;o>r;r++)e=n[r],s.add_node(e);return s.parsed},e=function(){function t(e,s){this.form_field=e,this.options=null!=s?s:{},t.browser_is_supported()&&(this.is_multiple=this.form_field.multiple,this.set_default_text(),this.set_default_values(),this.setup(),this.set_up_html(),this.register_observers(),this.on_ready())}return t.prototype.set_default_values=function(){var t=this;return this.click_test_action=function(e){return t.test_active_click(e)},this.activate_action=function(e){return t.activate_field(e)},this.active_field=!1,this.mouse_on_container=!1,this.results_showing=!1,this.result_highlighted=null,this.allow_single_deselect=null!=this.options.allow_single_deselect&&null!=this.form_field.options[0]&&""===this.form_field.options[0].text?this.options.allow_single_deselect:!1,this.disable_search_threshold=this.options.disable_search_threshold||0,this.disable_search=this.options.disable_search||!1,this.enable_split_word_search=null!=this.options.enable_split_word_search?this.options.enable_split_word_search:!0,this.group_search=null!=this.options.group_search?this.options.group_search:!0,this.search_contains=this.options.search_contains||!1,this.single_backstroke_delete=null!=this.options.single_backstroke_delete?this.options.single_backstroke_delete:!0,this.max_selected_options=this.options.max_selected_options||1/0,this.inherit_select_classes=this.options.inherit_select_classes||!1,this.display_selected_options=null!=this.options.display_selected_options?this.options.display_selected_options:!0,this.display_disabled_options=null!=this.options.display_disabled_options?this.options.display_disabled_options:!0,this.include_group_label_in_selected=this.options.include_group_label_in_selected||!1,this.max_shown_results=this.options.max_shown_results||Number.POSITIVE_INFINITY,this.case_sensitive_search=this.options.case_sensitive_search||!1},t.prototype.set_default_text=function(){return this.form_field.getAttribute("data-placeholder")?this.default_text=this.form_field.getAttribute("data-placeholder"):this.is_multiple?this.default_text=this.options.placeholder_text_multiple||this.options.placeholder_text||t.default_multiple_text:this.default_text=this.options.placeholder_text_single||this.options.placeholder_text||t.default_single_text,this.results_none_found=this.form_field.getAttribute("data-no_results_text")||this.options.no_results_text||t.default_no_result_text},t.prototype.choice_label=function(t){return this.include_group_label_in_selected&&null!=t.group_label?"<b class='group-name'>"+t.group_label+"</b>"+t.html:t.html},t.prototype.mouse_enter=function(){return this.mouse_on_container=!0},t.prototype.mouse_leave=function(){return this.mouse_on_container=!1},t.prototype.input_focus=function(t){var e=this;if(this.is_multiple){if(!this.active_field)return setTimeout(function(){return e.container_mousedown()},50)}else if(!this.active_field)return this.activate_field()},t.prototype.input_blur=function(t){var e=this;return this.mouse_on_container?void 0:(this.active_field=!1,setTimeout(function(){return e.blur_test()},100))},t.prototype.results_option_build=function(t){var e,s,i,r,o,n,l;for(e="",r=0,l=this.results_data,o=0,n=l.length;n>o&&(s=l[o],i="",i=s.group?this.result_add_group(s):this.result_add_option(s),""!==i&&(r++,e+=i),(null!=t?t.first:void 0)&&(s.selected&&this.is_multiple?this.choice_build(s):s.selected&&!this.is_multiple&&this.single_set_selected_text(this.choice_label(s))),!(r>=this.max_shown_results));o++);return e},t.prototype.result_add_option=function(t){var e,s;return t.search_match&&this.include_option_in_results(t)?(e=[],t.disabled||t.selected&&this.is_multiple||e.push("active-result"),!t.disabled||t.selected&&this.is_multiple||e.push("disabled-result"),t.selected&&e.push("result-selected"),null!=t.group_array_index&&e.push("group-option"),""!==t.classes&&e.push(t.classes),s=document.createElement("li"),s.className=e.join(" "),s.style.cssText=t.style,s.setAttribute("data-option-array-index",t.array_index),s.innerHTML=t.search_text,t.title&&(s.title=t.title),this.outerHTML(s)):""},t.prototype.result_add_group=function(t){var e,s;return(t.search_match||t.group_match)&&t.active_options>0?(e=[],e.push("group-result"),t.classes&&e.push(t.classes),s=document.createElement("li"),s.className=e.join(" "),s.innerHTML=t.search_text,t.title&&(s.title=t.title),this.outerHTML(s)):""},t.prototype.results_update_field=function(){return this.set_default_text(),this.is_multiple||this.results_reset_cleanup(),this.result_clear_highlight(),this.results_build(),this.results_showing?this.winnow_results():void 0},t.prototype.reset_single_select_options=function(){var t,e,s,i,r;for(i=this.results_data,r=[],e=0,s=i.length;s>e;e++)t=i[e],t.selected?r.push(t.selected=!1):r.push(void 0);return r},t.prototype.results_toggle=function(){return this.results_showing?this.results_hide():this.results_show()},t.prototype.results_search=function(t){return this.results_showing?this.winnow_results():this.results_show()},t.prototype.winnow_results=function(){var t,e,s,i,r,o,n,l,h,c,a,_;for(this.no_results_clear(),i=0,o=this.get_search_text(),t=o.replace(/[-[\]{}()*+?.,\\^$|#\s]/g,"\\$&"),h=new RegExp(t,"i"),s=this.get_search_regex(t),_=this.results_data,c=0,a=_.length;a>c;c++)e=_[c],e.search_match=!1,r=null,this.include_option_in_results(e)&&(e.group&&(e.group_match=!1,e.active_options=0),null!=e.group_array_index&&this.results_data[e.group_array_index]&&(r=this.results_data[e.group_array_index],0===r.active_options&&r.search_match&&(i+=1),r.active_options+=1),e.search_text=e.group?e.label:e.html,e.group&&!this.group_search||(e.search_match=this.search_string_match(e.search_text,s),e.search_match&&!e.group&&(i+=1),e.search_match?(o.length&&(n=e.search_text.search(h),l=e.search_text.substr(0,n+o.length)+"</em>"+e.search_text.substr(n+o.length),e.search_text=l.substr(0,n)+"<em>"+l.substr(n)),null!=r&&(r.group_match=!0)):null!=e.group_array_index&&this.results_data[e.group_array_index].search_match&&(e.search_match=!0)));return this.result_clear_highlight(),1>i&&o.length?(this.update_results_content(""),this.no_results(o)):(this.update_results_content(this.results_option_build()),this.winnow_results_set_highlight())},t.prototype.get_search_regex=function(t){var e,s;return e=this.search_contains?"":"^",s=this.case_sensitive_search?"":"i",new RegExp(e+t,s)},t.prototype.search_string_match=function(t,e){var s,i,r,o;if(e.test(t))return!0;if(this.enable_split_word_search&&(t.indexOf(" ")>=0||0===t.indexOf("["))&&(i=t.replace(/\[|\]/g,"").split(" "),i.length))for(r=0,o=i.length;o>r;r++)if(s=i[r],e.test(s))return!0},t.prototype.choices_count=function(){var t,e,s,i;if(null!=this.selected_option_count)return this.selected_option_count;for(this.selected_option_count=0,i=this.form_field.options,e=0,s=i.length;s>e;e++)t=i[e],t.selected&&(this.selected_option_count+=1);return this.selected_option_count},t.prototype.choices_click=function(t){return t.preventDefault(),this.results_showing||this.is_disabled?void 0:this.results_show()},t.prototype.keyup_checker=function(t){var e,s;switch(e=null!=(s=t.which)?s:t.keyCode,this.search_field_scale(),e){case 8:if(this.is_multiple&&this.backstroke_length<1&&this.choices_count()>0)return this.keydown_backstroke();if(!this.pending_backstroke)return this.result_clear_highlight(),this.results_search();break;case 13:if(t.preventDefault(),this.results_showing)return this.result_select(t);break;case 27:return this.results_showing&&this.results_hide(),!0;case 9:case 38:case 40:case 16:case 91:case 17:case 18:break;default:return this.results_search()}},t.prototype.clipboard_event_checker=function(t){var e=this;return setTimeout(function(){return e.results_search()},50)},t.prototype.container_width=function(){return null!=this.options.width?this.options.width:""+this.form_field.offsetWidth+"px"},t.prototype.include_option_in_results=function(t){return this.is_multiple&&!this.display_selected_options&&t.selected?!1:!this.display_disabled_options&&t.disabled?!1:!t.empty},t.prototype.search_results_touchstart=function(t){return this.touch_started=!0,this.search_results_mouseover(t)},t.prototype.search_results_touchmove=function(t){return this.touch_started=!1,this.search_results_mouseout(t)},t.prototype.search_results_touchend=function(t){return this.touch_started?this.search_results_mouseup(t):void 0},t.prototype.outerHTML=function(t){var e;return t.outerHTML?t.outerHTML:(e=document.createElement("div"),e.appendChild(t),e.innerHTML)},t.browser_is_supported=function(){return"Microsoft Internet Explorer"===window.navigator.appName?document.documentMode>=8:!(/iP(od|hone)/i.test(window.navigator.userAgent)||/IEMobile/i.test(window.navigator.userAgent)||/Windows Phone/i.test(window.navigator.userAgent)||/BlackBerry/i.test(window.navigator.userAgent)||/BB10/i.test(window.navigator.userAgent)||/Android.*Mobile/i.test(window.navigator.userAgent))},t.default_multiple_text="Select Some Options",t.default_single_text="Select an Option",t.default_no_result_text="No results match",t}(),t=jQuery,t.fn.extend({chosen:function(i){return e.browser_is_supported()?this.each(function(e){var r,o;return r=t(this),o=r.data("chosen"),"destroy"===i?void(o instanceof s&&o.destroy()):void(o instanceof s||r.data("chosen",new s(this,i)))}):this}}),s=function(e){function s(){return r=s.__super__.constructor.apply(this,arguments)}return n(s,e),s.prototype.setup=function(){return this.form_field_jq=t(this.form_field),this.current_selectedIndex=this.form_field.selectedIndex,this.is_rtl=this.form_field_jq.hasClass("chosen-rtl")},s.prototype.set_up_html=function(){var e,s;return e=["chosen-container"],e.push("chosen-container-"+(this.is_multiple?"multi":"single")),this.inherit_select_classes&&this.form_field.className&&e.push(this.form_field.className),this.is_rtl&&e.push("chosen-rtl"),s={"class":e.join(" "),style:"width: "+this.container_width()+";",title:this.form_field.title},this.form_field.id.length&&(s.id=this.form_field.id.replace(/[^\w]/g,"_")+"_chosen"),this.container=t("<div />",s),this.is_multiple?this.container.html('<ul class="chosen-choices"><li class="search-field"><input type="text" value="'+this.default_text+'" class="default" autocomplete="off" style="width:25px;" /></li></ul><div class="chosen-drop"><ul class="chosen-results"></ul></div>'):this.container.html('<a class="chosen-single chosen-default"><span>'+this.default_text+'</span><div><b></b></div></a><div class="chosen-drop"><div class="chosen-search"><input type="text" autocomplete="off" /></div><ul class="chosen-results"></ul></div>'),this.form_field_jq.hide().after(this.container),this.dropdown=this.container.find("div.chosen-drop").first(),this.search_field=this.container.find("input").first(),this.search_results=this.container.find("ul.chosen-results").first(),this.search_field_scale(),this.search_no_results=this.container.find("li.no-results").first(),this.is_multiple?(this.search_choices=this.container.find("ul.chosen-choices").first(),this.search_container=this.container.find("li.search-field").first()):(this.search_container=this.container.find("div.chosen-search").first(),this.selected_item=this.container.find(".chosen-single").first()),this.results_build(),this.set_tab_index(),this.set_label_behavior()},s.prototype.on_ready=function(){return this.form_field_jq.trigger("chosen:ready",{chosen:this})},s.prototype.register_observers=function(){var t=this;return this.container.bind("touchstart.chosen",function(e){return t.container_mousedown(e),e.preventDefault()}),this.container.bind("touchend.chosen",function(e){return t.container_mouseup(e),e.preventDefault()}),this.container.bind("mousedown.chosen",function(e){t.container_mousedown(e)}),this.container.bind("mouseup.chosen",function(e){t.container_mouseup(e)}),this.container.bind("mouseenter.chosen",function(e){t.mouse_enter(e)}),this.container.bind("mouseleave.chosen",function(e){t.mouse_leave(e)}),this.search_results.bind("mouseup.chosen",function(e){t.search_results_mouseup(e)}),this.search_results.bind("mouseover.chosen",function(e){t.search_results_mouseover(e)}),this.search_results.bind("mouseout.chosen",function(e){t.search_results_mouseout(e)}),this.search_results.bind("mousewheel.chosen DOMMouseScroll.chosen",function(e){t.search_results_mousewheel(e)}),this.search_results.bind("touchstart.chosen",function(e){t.search_results_touchstart(e)}),this.search_results.bind("touchmove.chosen",function(e){t.search_results_touchmove(e)}),this.search_results.bind("touchend.chosen",function(e){t.search_results_touchend(e)}),this.form_field_jq.bind("chosen:updated.chosen",function(e){t.results_update_field(e)}),this.form_field_jq.bind("chosen:activate.chosen",function(e){t.activate_field(e)}),this.form_field_jq.bind("chosen:open.chosen",function(e){t.container_mousedown(e)}),this.form_field_jq.bind("chosen:close.chosen",function(e){t.input_blur(e)}),this.search_field.bind("blur.chosen",function(e){t.input_blur(e)}),this.search_field.bind("keyup.chosen",function(e){t.keyup_checker(e)}),this.search_field.bind("keydown.chosen",function(e){t.keydown_checker(e)}),this.search_field.bind("focus.chosen",function(e){t.input_focus(e)}),this.search_field.bind("cut.chosen",function(e){t.clipboard_event_checker(e)}),this.search_field.bind("paste.chosen",function(e){t.clipboard_event_checker(e)}),this.is_multiple?this.search_choices.bind("click.chosen",function(e){t.choices_click(e)}):this.container.bind("click.chosen",function(t){t.preventDefault()})},s.prototype.destroy=function(){return t(this.container[0].ownerDocument).unbind("click.chosen",this.click_test_action),this.search_field[0].tabIndex&&(this.form_field_jq[0].tabIndex=this.search_field[0].tabIndex),this.container.remove(),this.form_field_jq.removeData("chosen"),this.form_field_jq.show()},s.prototype.search_field_disabled=function(){return this.is_disabled=this.form_field_jq[0].disabled,this.is_disabled?(this.container.addClass("chosen-disabled"),this.search_field[0].disabled=!0,this.is_multiple||this.selected_item.unbind("focus.chosen",this.activate_action),this.close_field()):(this.container.removeClass("chosen-disabled"),this.search_field[0].disabled=!1,this.is_multiple?void 0:this.selected_item.bind("focus.chosen",this.activate_action))},s.prototype.container_mousedown=function(e){return this.is_disabled||(e&&"mousedown"===e.type&&!this.results_showing&&e.preventDefault(),null!=e&&t(e.target).hasClass("search-choice-close"))?void 0:(this.active_field?this.is_multiple||!e||t(e.target)[0]!==this.selected_item[0]&&!t(e.target).parents("a.chosen-single").length||(e.preventDefault(),this.results_toggle()):(this.is_multiple&&this.search_field.val(""),t(this.container[0].ownerDocument).bind("click.chosen",this.click_test_action),this.results_show()),this.activate_field())},s.prototype.container_mouseup=function(t){return"ABBR"!==t.target.nodeName||this.is_disabled?void 0:this.results_reset(t)},s.prototype.search_results_mousewheel=function(t){var e;return t.originalEvent&&(e=t.originalEvent.deltaY||-t.originalEvent.wheelDelta||t.originalEvent.detail),null!=e?(t.preventDefault(),"DOMMouseScroll"===t.type&&(e=40*e),this.search_results.scrollTop(e+this.search_results.scrollTop())):void 0},s.prototype.blur_test=function(t){return!this.active_field&&this.container.hasClass("chosen-container-active")?this.close_field():void 0},s.prototype.close_field=function(){return t(this.container[0].ownerDocument).unbind("click.chosen",this.click_test_action),this.active_field=!1,this.results_hide(),this.container.removeClass("chosen-container-active"),this.clear_backstroke(),this.show_search_field_default(),this.search_field_scale()},s.prototype.activate_field=function(){return this.container.addClass("chosen-container-active"),this.active_field=!0,this.search_field.val(this.search_field.val()),this.search_field.focus()},s.prototype.test_active_click=function(e){var s;return s=t(e.target).closest(".chosen-container"),s.length&&this.container[0]===s[0]?this.active_field=!0:this.close_field()},s.prototype.results_build=function(){return this.parsing=!0,this.selected_option_count=null,this.results_data=i.select_to_array(this.form_field),this.is_multiple?this.search_choices.find("li.search-choice").remove():this.is_multiple||(this.single_set_selected_text(),this.disable_search||this.form_field.options.length<=this.disable_search_threshold?(this.search_field[0].readOnly=!0,this.container.addClass("chosen-container-single-nosearch")):(this.search_field[0].readOnly=!1,this.container.removeClass("chosen-container-single-nosearch"))),this.update_results_content(this.results_option_build({first:!0})),this.search_field_disabled(),this.show_search_field_default(),this.search_field_scale(),this.parsing=!1},s.prototype.result_do_highlight=function(t){var e,s,i,r,o;if(t.length){if(this.result_clear_highlight(),this.result_highlight=t,this.result_highlight.addClass("highlighted"),i=parseInt(this.search_results.css("maxHeight"),10),o=this.search_results.scrollTop(),r=i+o,s=this.result_highlight.position().top+this.search_results.scrollTop(),e=s+this.result_highlight.outerHeight(),e>=r)return this.search_results.scrollTop(e-i>0?e-i:0);if(o>s)return this.search_results.scrollTop(s)}},s.prototype.result_clear_highlight=function(){return this.result_highlight&&this.result_highlight.removeClass("highlighted"),this.result_highlight=null},s.prototype.results_show=function(){return this.is_multiple&&this.max_selected_options<=this.choices_count()?(this.form_field_jq.trigger("chosen:maxselected",{chosen:this}),!1):(this.container.addClass("chosen-with-drop"),this.results_showing=!0,this.search_field.focus(),this.search_field.val(this.search_field.val()),this.winnow_results(),this.form_field_jq.trigger("chosen:showing_dropdown",{chosen:this}))},s.prototype.update_results_content=function(t){return this.search_results.html(t)},s.prototype.results_hide=function(){return this.results_showing&&(this.result_clear_highlight(),this.container.removeClass("chosen-with-drop"),this.form_field_jq.trigger("chosen:hiding_dropdown",{chosen:this})),this.results_showing=!1},s.prototype.set_tab_index=function(t){var e;return this.form_field.tabIndex?(e=this.form_field.tabIndex,this.form_field.tabIndex=-1,this.search_field[0].tabIndex=e):void 0},s.prototype.set_label_behavior=function(){var e=this;return this.form_field_label=this.form_field_jq.parents("label"),!this.form_field_label.length&&this.form_field.id.length&&(this.form_field_label=t("label[for='"+this.form_field.id+"']")),this.form_field_label.length>0?this.form_field_label.bind("click.chosen",function(t){return e.is_multiple?e.container_mousedown(t):e.activate_field()}):void 0},s.prototype.show_search_field_default=function(){return this.is_multiple&&this.choices_count()<1&&!this.active_field?(this.search_field.val(this.default_text),this.search_field.addClass("default")):(this.search_field.val(""),this.search_field.removeClass("default"))},s.prototype.search_results_mouseup=function(e){var s;return s=t(e.target).hasClass("active-result")?t(e.target):t(e.target).parents(".active-result").first(),s.length?(this.result_highlight=s,this.result_select(e),this.search_field.focus()):void 0},s.prototype.search_results_mouseover=function(e){var s;return s=t(e.target).hasClass("active-result")?t(e.target):t(e.target).parents(".active-result").first(),s?this.result_do_highlight(s):void 0},s.prototype.search_results_mouseout=function(e){return t(e.target).hasClass("active-result")?this.result_clear_highlight():void 0},s.prototype.choice_build=function(e){var s,i,r=this;return s=t("<li />",{"class":"search-choice"}).html("<span>"+this.choice_label(e)+"</span>"),e.disabled?s.addClass("search-choice-disabled"):(i=t("<a />",{"class":"search-choice-close","data-option-array-index":e.array_index}),i.bind("click.chosen",function(t){return r.choice_destroy_link_click(t)}),s.append(i)),this.search_container.before(s)},s.prototype.choice_destroy_link_click=function(e){return e.preventDefault(),e.stopPropagation(),this.is_disabled?void 0:this.choice_destroy(t(e.target))},s.prototype.choice_destroy=function(t){return this.result_deselect(t[0].getAttribute("data-option-array-index"))?(this.show_search_field_default(),this.is_multiple&&this.choices_count()>0&&this.search_field.val().length<1&&this.results_hide(),t.parents("li").first().remove(),this.search_field_scale()):void 0},s.prototype.results_reset=function(){return this.reset_single_select_options(),this.form_field.options[0].selected=!0,this.single_set_selected_text(),this.show_search_field_default(),this.results_reset_cleanup(),this.form_field_jq.trigger("change"),this.active_field?this.results_hide():void 0},s.prototype.results_reset_cleanup=function(){return this.current_selectedIndex=this.form_field.selectedIndex,this.selected_item.find("abbr").remove()},s.prototype.result_select=function(t){var e,s;return this.result_highlight?(e=this.result_highlight,this.result_clear_highlight(),this.is_multiple&&this.max_selected_options<=this.choices_count()?(this.form_field_jq.trigger("chosen:maxselected",{chosen:this}),!1):(this.is_multiple?e.removeClass("active-result"):this.reset_single_select_options(),e.addClass("result-selected"),s=this.results_data[e[0].getAttribute("data-option-array-index")],s.selected=!0,this.form_field.options[s.options_index].selected=!0,this.selected_option_count=null,this.is_multiple?this.choice_build(s):this.single_set_selected_text(this.choice_label(s)),(t.metaKey||t.ctrlKey)&&this.is_multiple||this.results_hide(),this.show_search_field_default(),(this.is_multiple||this.form_field.selectedIndex!==this.current_selectedIndex)&&this.form_field_jq.trigger("change",{selected:this.form_field.options[s.options_index].value}),this.current_selectedIndex=this.form_field.selectedIndex,t.preventDefault(),this.search_field_scale())):void 0},s.prototype.single_set_selected_text=function(t){return null==t&&(t=this.default_text),t===this.default_text?this.selected_item.addClass("chosen-default"):(this.single_deselect_control_build(),this.selected_item.removeClass("chosen-default")),this.selected_item.find("span").html(t)},s.prototype.result_deselect=function(t){var e;return e=this.results_data[t],this.form_field.options[e.options_index].disabled?!1:(e.selected=!1,this.form_field.options[e.options_index].selected=!1,this.selected_option_count=null,this.result_clear_highlight(),this.results_showing&&this.winnow_results(),this.form_field_jq.trigger("change",{deselected:this.form_field.options[e.options_index].value}),this.search_field_scale(),!0)},s.prototype.single_deselect_control_build=function(){return this.allow_single_deselect?(this.selected_item.find("abbr").length||this.selected_item.find("span").first().after('<abbr class="search-choice-close"></abbr>'),this.selected_item.addClass("chosen-single-with-deselect")):void 0},s.prototype.get_search_text=function(){return t("<div/>").text(t.trim(this.search_field.val())).html()},s.prototype.winnow_results_set_highlight=function(){var t,e;return e=this.is_multiple?[]:this.search_results.find(".result-selected.active-result"),t=e.length?e.first():this.search_results.find(".active-result").first(),null!=t?this.result_do_highlight(t):void 0},s.prototype.no_results=function(e){var s;return s=t('<li class="no-results">'+this.results_none_found+' "<span></span>"</li>'),s.find("span").first().html(e),this.search_results.append(s),this.form_field_jq.trigger("chosen:no_results",{chosen:this})},s.prototype.no_results_clear=function(){return this.search_results.find(".no-results").remove()},s.prototype.keydown_arrow=function(){var t;return this.results_showing&&this.result_highlight?(t=this.result_highlight.nextAll("li.active-result").first())?this.result_do_highlight(t):void 0:this.results_show()},s.prototype.keyup_arrow=function(){var t;return this.results_showing||this.is_multiple?this.result_highlight?(t=this.result_highlight.prevAll("li.active-result"),t.length?this.result_do_highlight(t.first()):(this.choices_count()>0&&this.results_hide(),this.result_clear_highlight())):void 0:this.results_show()},s.prototype.keydown_backstroke=function(){var t;return this.pending_backstroke?(this.choice_destroy(this.pending_backstroke.find("a").first()),this.clear_backstroke()):(t=this.search_container.siblings("li.search-choice").last(),t.length&&!t.hasClass("search-choice-disabled")?(this.pending_backstroke=t,this.single_backstroke_delete?this.keydown_backstroke():this.pending_backstroke.addClass("search-choice-focus")):void 0)},s.prototype.clear_backstroke=function(){return this.pending_backstroke&&this.pending_backstroke.removeClass("search-choice-focus"),this.pending_backstroke=null},s.prototype.keydown_checker=function(t){var e,s;switch(e=null!=(s=t.which)?s:t.keyCode,this.search_field_scale(),8!==e&&this.pending_backstroke&&this.clear_backstroke(),e){case 8:this.backstroke_length=this.search_field.val().length;break;case 9:this.results_showing&&!this.is_multiple&&this.result_select(t),this.mouse_on_container=!1;break;case 13:this.results_showing&&t.preventDefault();break;case 32:this.disable_search&&t.preventDefault();break;case 38:t.preventDefault(),this.keyup_arrow();break;case 40:t.preventDefault(),this.keydown_arrow()}},s.prototype.search_field_scale=function(){var e,s,i,r,o,n,l,h,c;if(this.is_multiple){for(i=0,l=0,o="position:absolute; left: -1000px; top: -1000px; display:none;",n=["font-size","font-style","font-weight","font-family","line-height","text-transform","letter-spacing"],h=0,c=n.length;c>h;h++)r=n[h],o+=r+":"+this.search_field.css(r)+";";return e=t("<div />",{style:o}),e.text(this.search_field.val()),t("body").append(e),l=e.width()+25,e.remove(),s=this.container.outerWidth(),l>s-10&&(l=s-10),this.search_field.css({width:l+"px"})}},s}(e)}).call(this);
//# sourceMappingURL=chosen.jquery.min.js.map

/*
* jquery-match-height 0.7.2 by @liabru
* http://brm.io/jquery-match-height/
* License MIT
*/
!function(t){"use strict";"function"==typeof define&&define.amd?define(["jquery"],t):"undefined"!=typeof module&&module.exports?module.exports=t(require("jquery")):t(jQuery)}(function(t){var e=-1,o=-1,n=function(t){return parseFloat(t)||0},a=function(e){var o=1,a=t(e),i=null,r=[];return a.each(function(){var e=t(this),a=e.offset().top-n(e.css("margin-top")),s=r.length>0?r[r.length-1]:null;null===s?r.push(e):Math.floor(Math.abs(i-a))<=o?r[r.length-1]=s.add(e):r.push(e),i=a}),r},i=function(e){var o={
  byRow:!0,property:"height",target:null,remove:!1};return"object"==typeof e?t.extend(o,e):("boolean"==typeof e?o.byRow=e:"remove"===e&&(o.remove=!0),o)},r=t.fn.matchHeight=function(e){var o=i(e);if(o.remove){var n=this;return this.css(o.property,""),t.each(r._groups,function(t,e){e.elements=e.elements.not(n)}),this}return this.length<=1&&!o.target?this:(r._groups.push({elements:this,options:o}),r._apply(this,o),this)};r.version="0.7.2",r._groups=[],r._throttle=80,r._maintainScroll=!1,r._beforeUpdate=null,
  r._afterUpdate=null,r._rows=a,r._parse=n,r._parseOptions=i,r._apply=function(e,o){var s=i(o),h=t(e),l=[h],c=t(window).scrollTop(),p=t("html").outerHeight(!0),u=h.parents().filter(":hidden");return u.each(function(){var e=t(this);e.data("style-cache",e.attr("style"))}),u.css("display","block"),s.byRow&&!s.target&&(h.each(function(){var e=t(this),o=e.css("display");"inline-block"!==o&&"flex"!==o&&"inline-flex"!==o&&(o="block"),e.data("style-cache",e.attr("style")),e.css({display:o,"padding-top":"0",
  "padding-bottom":"0","margin-top":"0","margin-bottom":"0","border-top-width":"0","border-bottom-width":"0",height:"100px",overflow:"hidden"})}),l=a(h),h.each(function(){var e=t(this);e.attr("style",e.data("style-cache")||"")})),t.each(l,function(e,o){var a=t(o),i=0;if(s.target)i=s.target.outerHeight(!1);else{if(s.byRow&&a.length<=1)return void a.css(s.property,"");a.each(function(){var e=t(this),o=e.attr("style"),n=e.css("display");"inline-block"!==n&&"flex"!==n&&"inline-flex"!==n&&(n="block");var a={
  display:n};a[s.property]="",e.css(a),e.outerHeight(!1)>i&&(i=e.outerHeight(!1)),o?e.attr("style",o):e.css("display","")})}a.each(function(){var e=t(this),o=0;s.target&&e.is(s.target)||("border-box"!==e.css("box-sizing")&&(o+=n(e.css("border-top-width"))+n(e.css("border-bottom-width")),o+=n(e.css("padding-top"))+n(e.css("padding-bottom"))),e.css(s.property,i-o+"px"))})}),u.each(function(){var e=t(this);e.attr("style",e.data("style-cache")||null)}),r._maintainScroll&&t(window).scrollTop(c/p*t("html").outerHeight(!0)),
  this},r._applyDataApi=function(){var e={};t("[data-match-height], [data-mh]").each(function(){var o=t(this),n=o.attr("data-mh")||o.attr("data-match-height");n in e?e[n]=e[n].add(o):e[n]=o}),t.each(e,function(){this.matchHeight(!0)})};var s=function(e){r._beforeUpdate&&r._beforeUpdate(e,r._groups),t.each(r._groups,function(){r._apply(this.elements,this.options)}),r._afterUpdate&&r._afterUpdate(e,r._groups)};r._update=function(n,a){if(a&&"resize"===a.type){var i=t(window).width();if(i===e)return;e=i;
  }n?o===-1&&(o=setTimeout(function(){s(a),o=-1},r._throttle)):s(a)},t(r._applyDataApi);var h=t.fn.on?"on":"bind";t(window)[h]("load",function(t){r._update(!1,t)}),t(window)[h]("resize orientationchange",function(t){r._update(!0,t)})});


  /*! Superslides - v0.6.3-wip - 2013-12-17
* https://github.com/nicinabox/superslides
* Copyright (c) 2013 Nic Aitch; Licensed MIT */
(function(i,t){var n,e="superslides";n=function(n,e){this.options=t.extend({play:!1,animation_speed:600,animation_easing:"swing",animation:"slide",inherit_width_from:i,inherit_height_from:i,pagination:!0,hashchange:!1,scrollable:!0,elements:{preserve:".preserve",nav:".slides-navigation",container:".slides-container",pagination:".slides-pagination"}},e);var s=this,o=t("<div>",{"class":"slides-control"}),a=1;this.$el=t(n),this.$container=this.$el.find(this.options.elements.container);var r=function(){return a=s._findMultiplier(),s.$el.on("click",s.options.elements.nav+" a",function(i){i.preventDefault(),s.stop(),t(this).hasClass("next")?s.animate("next",function(){s.start()}):s.animate("prev",function(){s.start()})}),t(document).on("keyup",function(i){37===i.keyCode&&s.animate("prev"),39===i.keyCode&&s.animate("next")}),t(i).on("resize",function(){setTimeout(function(){var i=s.$container.children();s.width=s._findWidth(),s.height=s._findHeight(),i.css({width:s.width,left:s.width}),s.css.containers(),s.css.images()},10)}),s.options.hashchange&&t(i).on("hashchange",function(){var i,t=s._parseHash();i=s._upcomingSlide(t),i>=0&&i!==s.current&&s.animate(i)}),s.pagination._events(),s.start(),s},h={containers:function(){s.init?(s.$el.css({height:s.height}),s.$control.css({width:s.width*a,left:-s.width}),s.$container.css({})):(t("body").css({margin:0}),s.$el.css({position:"relative",overflow:"hidden",width:"100%",height:s.height}),s.$control.css({position:"relative",transform:"translate3d(0)",height:"100%",width:s.width*a,left:-s.width}),s.$container.css({display:"none",margin:"0",padding:"0",listStyle:"none",position:"relative",height:"100%"})),1===s.size()&&s.$el.find(s.options.elements.nav).hide()},images:function(){var i=s.$container.find("img").not(s.options.elements.preserve);i.removeAttr("width").removeAttr("height").css({"-webkit-backface-visibility":"hidden","-ms-interpolation-mode":"bicubic",position:"absolute",left:"0",top:"0","z-index":"-1","max-width":"none"}),i.each(function(){var i=s.image._aspectRatio(this),n=this;if(t.data(this,"processed"))s.image._scale(n,i),s.image._center(n,i);else{var e=new Image;e.onload=function(){s.image._scale(n,i),s.image._center(n,i),t.data(n,"processed",!0)},e.src=this.src}})},children:function(){var i=s.$container.children();i.is("img")&&(i.each(function(){if(t(this).is("img")){t(this).wrap("<div>");var i=t(this).attr("id");t(this).removeAttr("id"),t(this).parent().attr("id",i)}}),i=s.$container.children()),s.init||i.css({display:"none",left:2*s.width}),i.css({position:"absolute",overflow:"hidden",height:"100%",width:s.width,top:0,zIndex:0})}},c={slide:function(i,t){var n=s.$container.children(),e=n.eq(i.upcoming_slide);e.css({left:i.upcoming_position,display:"block"}),s.$control.animate({left:i.offset},s.options.animation_speed,s.options.animation_easing,function(){s.size()>1&&(s.$control.css({left:-s.width}),n.eq(i.upcoming_slide).css({left:s.width,zIndex:2}),i.outgoing_slide>=0&&n.eq(i.outgoing_slide).css({left:s.width,display:"none",zIndex:0})),t()})},fade:function(i,t){var n=this,e=n.$container.children(),s=e.eq(i.outgoing_slide),o=e.eq(i.upcoming_slide);o.css({left:this.width,opacity:0,display:"block"}).animate({opacity:1},n.options.animation_speed,n.options.animation_easing),i.outgoing_slide>=0?s.animate({opacity:0},n.options.animation_speed,n.options.animation_easing,function(){n.size()>1&&(e.eq(i.upcoming_slide).css({zIndex:2}),i.outgoing_slide>=0&&e.eq(i.outgoing_slide).css({opacity:1,display:"none",zIndex:0})),t()}):(o.css({zIndex:2}),t())}};c=t.extend(c,t.fn.superslides.fx);var d={_centerY:function(i){var n=t(i);n.css({top:(s.height-n.height())/2})},_centerX:function(i){var n=t(i);n.css({left:(s.width-n.width())/2})},_center:function(i){s.image._centerX(i),s.image._centerY(i)},_aspectRatio:function(i){if(!i.naturalHeight&&!i.naturalWidth){var t=new Image;t.src=i.src,i.naturalHeight=t.height,i.naturalWidth=t.width}return i.naturalHeight/i.naturalWidth},_scale:function(i,n){n=n||s.image._aspectRatio(i);var e=s.height/s.width,o=t(i);e>n?o.css({height:s.height,width:s.height/n}):o.css({height:s.width*n,width:s.width})}},l={_setCurrent:function(i){if(s.$pagination){var t=s.$pagination.children();t.removeClass("current"),t.eq(i).addClass("current")}},_addItem:function(i){var n=i+1,e=n,o=s.$container.children().eq(i),a=o.attr("id");a&&(e=a);var r=t("<a>",{href:"#"+e,text:e});r.appendTo(s.$pagination)},_setup:function(){if(s.options.pagination&&1!==s.size()){var i=t("<nav>",{"class":s.options.elements.pagination.replace(/^\./,"")});s.$pagination=i.appendTo(s.$el);for(var n=0;s.size()>n;n++)s.pagination._addItem(n)}},_events:function(){s.$el.on("click",s.options.elements.pagination+" a",function(i){i.preventDefault();var t,n=s._parseHash(this.hash);t=s._upcomingSlide(n,!0),t!==s.current&&s.animate(t,function(){s.start()})})}};return this.css=h,this.image=d,this.pagination=l,this.fx=c,this.animation=this.fx[this.options.animation],this.$control=this.$container.wrap(o).parent(".slides-control"),s._findPositions(),s.width=s._findWidth(),s.height=s._findHeight(),this.css.children(),this.css.containers(),this.css.images(),this.pagination._setup(),r()},n.prototype={_findWidth:function(){return t(this.options.inherit_width_from).width()},_findHeight:function(){return t(this.options.inherit_height_from).height()},_findMultiplier:function(){return 1===this.size()?1:3},_upcomingSlide:function(i,t){if(t&&!isNaN(i)&&(i-=1),/next/.test(i))return this._nextInDom();if(/prev/.test(i))return this._prevInDom();if(/\d/.test(i))return+i;if(i&&/\w/.test(i)){var n=this._findSlideById(i);return n>=0?n:0}return 0},_findSlideById:function(i){return this.$container.find("#"+i).index()},_findPositions:function(i,t){t=t||this,void 0===i&&(i=-1),t.current=i,t.next=t._nextInDom(),t.prev=t._prevInDom()},_nextInDom:function(){var i=this.current+1;return i===this.size()&&(i=0),i},_prevInDom:function(){var i=this.current-1;return 0>i&&(i=this.size()-1),i},_parseHash:function(t){return t=t||i.location.hash,t=t.replace(/^#/,""),t&&!isNaN(+t)&&(t=+t),t},size:function(){return this.$container.children().length},destroy:function(){return this.$el.removeData()},update:function(){this.css.children(),this.css.containers(),this.css.images(),this.pagination._addItem(this.size()),this._findPositions(this.current),this.$el.trigger("updated.slides")},stop:function(){clearInterval(this.play_id),delete this.play_id,this.$el.trigger("stopped.slides")},start:function(){var n=this;n.options.hashchange?t(i).trigger("hashchange"):this.animate(),this.options.play&&(this.play_id&&this.stop(),this.play_id=setInterval(function(){n.animate()},this.options.play)),this.$el.trigger("started.slides")},animate:function(t,n){var e=this,s={};if(!(this.animating||(this.animating=!0,void 0===t&&(t="next"),s.upcoming_slide=this._upcomingSlide(t),s.upcoming_slide>=this.size()))){if(s.outgoing_slide=this.current,s.upcoming_position=2*this.width,s.offset=-s.upcoming_position,("prev"===t||s.outgoing_slide>t)&&(s.upcoming_position=0,s.offset=0),e.size()>1&&e.pagination._setCurrent(s.upcoming_slide),e.options.hashchange){var o=s.upcoming_slide+1,a=e.$container.children(":eq("+s.upcoming_slide+")").attr("id");i.location.hash=a?a:o}e.$el.trigger("animating.slides",[s]),e.animation(s,function(){e._findPositions(s.upcoming_slide,e),"function"==typeof n&&n(),e.animating=!1,e.$el.trigger("animated.slides"),e.init||(e.$el.trigger("init.slides"),e.init=!0,e.$container.fadeIn("fast"))})}}},t.fn[e]=function(i,s){var o=[];return this.each(function(){var a,r,h;return a=t(this),r=a.data(e),h="object"==typeof i&&i,r||(o=a.data(e,r=new n(this,h))),"string"==typeof i&&(o=r[i],"function"==typeof o)?o=o.call(r,s):void 0}),o},t.fn[e].fx={}})(this,jQuery);

/*!
 * Media helper for fancyBox
 * version: 1.0.6 (Fri, 14 Jun 2013)
 * @requires fancyBox v2.0 or later
 *
 * Usage:
 *     $(".fancybox").fancybox({
 *         helpers : {
 *             media: true
 *         }
 *     });
 *
 * Set custom URL parameters:
 *     $(".fancybox").fancybox({
 *         helpers : {
 *             media: {
 *                 youtube : {
 *                     params : {
 *                         autoplay : 0
 *                     }
 *                 }
 *             }
 *         }
 *     });
 *
 * Or:
 *     $(".fancybox").fancybox({,
 *         helpers : {
 *             media: true
 *         },
 *         youtube : {
 *             autoplay: 0
 *         }
 *     });
 *
 *  Supports:
 *
 *      Youtube
 *          http://www.youtube.com/watch?v=opj24KnzrWo
 *          http://www.youtube.com/embed/opj24KnzrWo
 *          http://youtu.be/opj24KnzrWo
 *			http://www.youtube-nocookie.com/embed/opj24KnzrWo
 *      Vimeo
 *          http://vimeo.com/40648169
 *          http://vimeo.com/channels/staffpicks/38843628
 *          http://vimeo.com/groups/surrealism/videos/36516384
 *          http://player.vimeo.com/video/45074303
 *      Metacafe
 *          http://www.metacafe.com/watch/7635964/dr_seuss_the_lorax_movie_trailer/
 *          http://www.metacafe.com/watch/7635964/
 *      Dailymotion
 *          http://www.dailymotion.com/video/xoytqh_dr-seuss-the-lorax-premiere_people
 *      Twitvid
 *          http://twitvid.com/QY7MD
 *      Twitpic
 *          http://twitpic.com/7p93st
 *      Instagram
 *          http://instagr.am/p/IejkuUGxQn/
 *          http://instagram.com/p/IejkuUGxQn/
 *      Google maps
 *          http://maps.google.com/maps?q=Eiffel+Tower,+Avenue+Gustave+Eiffel,+Paris,+France&t=h&z=17
 *          http://maps.google.com/?ll=48.857995,2.294297&spn=0.007666,0.021136&t=m&z=16
 *          http://maps.google.com/?ll=48.859463,2.292626&spn=0.000965,0.002642&t=m&z=19&layer=c&cbll=48.859524,2.292532&panoid=YJ0lq28OOy3VT2IqIuVY0g&cbp=12,151.58,,0,-15.56
 */
 ;(function ($) {
	"use strict";

	//Shortcut for fancyBox object
	var F = $.fancybox,
		format = function( url, rez, params ) {
			params = params || '';

			if ( $.type( params ) === "object" ) {
				params = $.param(params, true);
			}

			$.each(rez, function(key, value) {
				url = url.replace( '$' + key, value || '' );
			});

			if (params.length) {
				url += ( url.indexOf('?') > 0 ? '&' : '?' ) + params;
			}

			return url;
		};

	//Add helper object
	F.helpers.media = {
		defaults : {
			youtube : {
				matcher : /(youtube\.com|youtu\.be|youtube-nocookie\.com)\/(watch\?v=|v\/|u\/|embed\/?)?(videoseries\?list=(.*)|[\w-]{11}|\?listType=(.*)&list=(.*)).*/i,
				params  : {
					autoplay    : 1,
					autohide    : 1,
					fs          : 1,
					rel         : 0,
					hd          : 1,
					wmode       : 'opaque',
					enablejsapi : 1,
                    			ps: 'docs',
                    			controls: 1
				},
				type : 'iframe',
				url  : '//www.youtube.com/embed/$3'
			},
			vimeo : {
				matcher : /(?:vimeo(?:pro)?.com)\/(?:[^\d]+)?(\d+)(?:.*)/,
				params  : {
					autoplay      : 1,
					hd            : 1,
					show_title    : 1,
					show_byline   : 1,
					show_portrait : 0,
					fullscreen    : 1
				},
				type : 'iframe',
				url  : '//player.vimeo.com/video/$1'
			},
			metacafe : {
				matcher : /metacafe.com\/(?:watch|fplayer)\/([\w\-]{1,10})/,
				params  : {
					autoPlay : 'yes'
				},
				type : 'swf',
				url  : function( rez, params, obj ) {
					obj.swf.flashVars = 'playerVars=' + $.param( params, true );

					return '//www.metacafe.com/fplayer/' + rez[1] + '/.swf';
				}
			},
			dailymotion : {
				matcher : /dailymotion.com\/video\/(.*)\/?(.*)/,
				params  : {
					additionalInfos : 0,
					autoStart : 1
				},
				type : 'swf',
				url  : '//www.dailymotion.com/swf/video/$1'
			},
			twitvid : {
				matcher : /twitvid\.com\/([a-zA-Z0-9_\-\?\=]+)/i,
				params  : {
					autoplay : 0
				},
				type : 'iframe',
				url  : '//www.twitvid.com/embed.php?guid=$1'
			},
			twitpic : {
				matcher : /twitpic\.com\/(?!(?:place|photos|events)\/)([a-zA-Z0-9\?\=\-]+)/i,
				type : 'image',
				url  : '//twitpic.com/show/full/$1/'
			},
			instagram : {
				matcher : /(instagr\.am|instagram\.com)\/p\/([a-zA-Z0-9_\-]+)\/?/i,
				type : 'image',
				url  : '//$1/p/$2/media/?size=l'
			},
			google_maps : {
				matcher : /maps\.google\.([a-z]{2,3}(\.[a-z]{2})?)\/(\?ll=|maps\?)(.*)/i,
				type : 'iframe',
				url  : function( rez ) {
					return '//maps.google.' + rez[1] + '/' + rez[3] + '' + rez[4] + '&output=' + (rez[4].indexOf('layer=c') > 0 ? 'svembed' : 'embed');
				}
			}
		},

		beforeLoad : function(opts, obj) {
			var url   = obj.href || '',
				type  = false,
				what,
				item,
				rez,
				params;

			for (what in opts) {
				if (opts.hasOwnProperty(what)) {
					item = opts[ what ];
					rez  = url.match( item.matcher );

					if (rez) {
						type   = item.type;
						params = $.extend(true, {}, item.params, obj[ what ] || ($.isPlainObject(opts[ what ]) ? opts[ what ].params : null));

						url = $.type( item.url ) === "function" ? item.url.call( this, rez, params, obj ) : format( item.url, rez, params );

						break;
					}
				}
			}

			if (type) {
				obj.href = url;
				obj.type = type;

				obj.autoHeight = false;
			}
		}
	};

}(jQuery));



