/**
 * @namespace materialAPEX
 **/
var materialAPEX = materialAPEX || {};

/**
 * @module observe
 **/
materialAPEX.observe = {
	toolbar: function () {
		if (!classExists("a-Toolbar-group")) return;
		materialAPEX.debug.time("materialAPEX.observe.toolbar");

		var observerConfig = {
			childList: true
		};

		var selector = ".a-Toolbar-group select";

		var observer = new MutationObserver(function (mutations) {
			$(selector).formSelect();
			materialAPEX.ig.init();
		});

		$(selector).each(function () {
			observer.observe(this, observerConfig);
		});

		materialAPEX.debug.timeEnd("materialAPEX.observe.toolbar");
	},

	select: function () {
		if (!classExists("a-GV-floatingItemContent")) return;
		materialAPEX.debug.time("materialAPEX.observe.select");

		var observerConfig = {
			childList: true
		};

		var observer = new MutationObserver(function (mutations) {
			mutations.forEach(function (mutation) {
				if (mutation.addedNodes.length > 0) {
					$(mutation.target).find("select").formSelect();
				}
			});
		});

		$(".a-GV-floatingItemContent").each(function () {
			observer.observe(this, observerConfig);
		});

		materialAPEX.debug.timeEnd("materialAPEX.observe.select");
	},

	irDialog: function () {
		if (!classExists("a-IRR")) return;
		materialAPEX.debug.time("materialAPEX.observe.irDialog");

		var observerConfig = {
			childList: true
		};

		var observer = new MutationObserver(function (mutations) {
			materialAPEX.items.init();
		});

		$(".a-IRR-dialogBody").each(function () {
			observer.observe(this, observerConfig);
		});

		materialAPEX.debug.timeEnd("materialAPEX.observe.irDialog");
	},

	irHeader: function () {
		if (!classExists("a-IRR")) return;
		materialAPEX.debug.time("materialAPEX.observe.irHeader");

		var observerConfig = {
			attributes: true
		};

		var observer = new MutationObserver(function (mutations) {
			mutations.forEach(function (mutation) {
				if (mutation.attributeName === 'class') {
					$(document).trigger("apexwindowresized");
					setTimeout(function () {
						$(document).trigger("apexwindowresized");
					}, 250);
				}
			});
		});

		$(".t-fht-thead").each(function () {
			observer.observe(this, observerConfig);
		});

		materialAPEX.debug.timeEnd("materialAPEX.observe.irHeader");
	}
};

/**
 * @module ig
 **/
materialAPEX.ig = {
	init: function () {
		if (!classExists("a-IG")) return;
		materialAPEX.debug.time("materialAPEX.ig.init");

		$(".a-Toolbar-group")
			.removeClass("force-hide")
			.addClass("force-show")
			.each(function () {
				var group = $(this);

				// hide the groups that have no visible elements
				if (group.find(":visible").length === 0) {
					group.removeClass("force-show").addClass("force-hide");
				}

				// hide the groups that have no select options
				if (group.find("select").length > 0 &&
					group.find("select").find("option").length === 0) {
					group.removeClass("force-show").addClass("force-hide");
				}

				// hide the groups that were forced to display: none
				// that is weird fix but it works....
				if (group.find("select").attr("style") === "display: none;") {
					group.removeClass("force-show").addClass("force-hide");
				}
			});

		// trigger a resize for the IG fixed header
		setTimeout(function () {
			$(document).trigger("apexwindowresized");
		}, 250);

		materialAPEX.debug.timeEnd("materialAPEX.ig.init");
	}
};

/**
 * @module select
 **/
materialAPEX.select = {
	noInit: '.disabled, .shuttle_left, .shuttle_right, .datepicker-select, .a-GV-columnItem select',

	init: function () {
		materialAPEX.debug.time("materialAPEX.select.init");
		$('form select').not(materialAPEX.select.noInit).formSelect();
		$('.select-wrapper').closest(".ma-field-container").addClass("ma-select-container");
		materialAPEX.debug.timeEnd("materialAPEX.select.init");
	},

	ir: function () {
		materialAPEX.debug.time("materialAPEX.select.ir");
		$('.a-IRR select').not(materialAPEX.select.noInit).formSelect();
		materialAPEX.debug.timeEnd("materialAPEX.select.ir");
	},

	refresh: function (selector) {
		materialAPEX.debug.time("materialAPEX.select.refresh");
		var exclude = ".a-Property-field--select, .a-IRR-dialogTable select, .utr select";
		// reset focus on select elements
		setTimeout(function () {
			$(selector).not(exclude).formSelect("destroy");
			$(selector).not(exclude).formSelect();
			$(selector).not(exclude).change(function () {
				$(selector).not(exclude).formSelect("destroy");
				$(selector).not(exclude).formSelect();
			});
		}, 250);
		materialAPEX.debug.timeEnd("materialAPEX.select.refresh");
	}
};

/**
 * @module datepicker
 **/
materialAPEX.datepicker = {
	materialDatePicker: function (inst, input) {
		var headerHtml = function (day, month, dayNum, year) {
			return '<div class="ui-datepicker-material-header">' +
				'<div class="ui-datepicker-material-year">' + year + '</div>' +
				'<div class="ui-datepicker-material-day">' + day + ', ' + month + ' ' + dayNum + '</div>' +
				'</div>';
		};

		setTimeout(function () {
			var date = $(inst.input).datepicker('getDate') || new Date();
			var day = $.datepicker.formatDate('D', date);
			var month = $.datepicker.formatDate('M', date);
			var dayNum = $.datepicker.formatDate('d', date);
			var year = $.datepicker.formatDate('yy', date);

			$(".ui-datepicker")
				.remove(".ui-datepicker-material-header")
				.wrapInner("<div class='ui-datepicker-material-body'></div>")
				.prepend(headerHtml(day, month, dayNum, year))
				.wrapInner("<div class='ui-datepicker-material'></div>");
		}, 1);
	},

	init: function () {
		if (!classExists("hasDatepicker")) return;
		materialAPEX.debug.time("materialAPEX.datepicker.init");

		/**
		 * Because we modify the datepicker options below, we need to override
		 * the constructor. For some reason, _showDatepicker is passed a jQuery
		 * event instead of the actual input, so we have to check that.
		 * If the argument is indeed a jQuery event, we have to pass the target
		 * of that event to the original constructor.
		 */
		$.datepicker._showDatepickerOverrideMA = $.datepicker._showDatepicker;
		$.datepicker._showDatepicker = function (input) {
			if (input.target) {
				$.datepicker._showDatepickerOverrideMA(input.target);
			} else {
				$.datepicker._showDatepickerOverrideMA(input);
			}
		};

		materialAPEX.debug.timeEnd("materialAPEX.datepicker.init");
	}
};

/**
 * @module materialize
 **/
materialAPEX.materialize = {
	init: function () {
		materialAPEX.debug.time("materialAPEX.materialize.init");

		// Sidenav
		var sidenavDirection = materialAPEX.theme.isRTL() ? "right" : "left";
		$('.sidenav').sidenav({
			edge: sidenavDirection
		});

		/* Pushpin */
		if ($('.apex-rds li').length > 0) {
			$(".ma-body-column-css-classes").addClass("col s12 m9 l10");
			$(".apex-rds-container").addClass("col hide-on-small-only m3 l2");

			var pushpinOffset = ($(".nav-breadcrumbs").length === 0 ? 64 : 128);
			$('.apex-rds').pushpin({
				top: 0,
				offset: pushpinOffset
			});
		}

		/* Media */
		$('.slider').slider();

		/* Tooltips */
		$("[data-tooltip][data-tooltip!='']").maTooltip({
			html: true
		});

		/* Tabs */
		$('ul.tabs').each(function () {
			var el = this;
			var tabContainer = $(el).closest('.ma-region-tabs');
			var tabContainerID = tabContainer.attr('id');

			$(el).tabs({
				onShow: function (tab) {
					$(document).trigger("apexwindowresized");

					if (tabContainer.hasClass("js-useLocalStorage")) {
						var maSessionStorage = apex.storage.getScopedSessionStorage({
							usePageId: true,
							useAppId: true,
							regionId: tabContainerID
						});

						var tabID = $(tab).attr('id');
						maSessionStorage.setItem("activeTab", tabID);
					}
				}
			});

			if (tabContainer.hasClass("js-useLocalStorage")) {
				var maSessionStorage = apex.storage.getScopedSessionStorage({
					usePageId: true,
					useAppId: true,
					regionId: tabContainerID
				});

				$(el).tabs('select', maSessionStorage.getItem("activeTab"));
			}
		});

		/* Carousels */
		$('.carousel.carousel-slider').carousel({
			fullWidth: true,
			indicators: true
		});
		$('.carousel:not(.carousel-slider)').carousel({
			indicators: true
		});

		// Collapsible
		$(".ma-collapsible-accordion").collapsible({accordion: true});
		$(".ma-collapsible-expandable").collapsible({accordion: false});

		// Bottom sheets init
		$(".modal.bottom-sheet").modal();

		materialAPEX.debug.timeEnd("materialAPEX.materialize.init");
	}
};
