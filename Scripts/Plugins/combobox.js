(function ($) {
    $.widget('ui.combobox', {
        _create: function () {

            var self = this;
            var wrapper = this.wrapper = $('<span>')
						.addClass('ui-combobox')
						.insertAfter(this.element);
            var lastRequestResults = null;

            var webServiceMethodName = this.options.webServiceMethodName;
            var additionalWebServiceParameter = this.options.additionalWebServiceParameter || [];
            var objectIdGetter = typeof (this.options.objectIdGetter) == 'string' ? function (o) { return o[self.options.objectIdGetter]; } : this.options.objectIdGetter;
            var labelGetter = (typeof (this.options.labelGetter) == 'string' ? function (o) { return o[self.options.labelGetter]; } : this.options.labelGetter) || function (o) { return o.Code; };
            var valueGetter = (typeof (this.options.valueGetter) == 'string' ? function (o) { return o[self.options.valueGetter]; } : this.options.valueGetter) || function (o) { return o.Code; };
            var hiddenField = this.options.hiddenField;

            var input = this.element
					.appendTo(wrapper)
					.addClass('ui-state-default ui-combobox-input')
					.autocomplete({
					    delay: 0,
					    minLength: 0,

					    source: function (request, response) {
					        var params = [request.term];
					        params = params.concat(additionalWebServiceParameter);
					        params.push(function (values) {
					            lastRequestResults = $.map(values, function (o) {
					                var result = {};
					                result.label = labelGetter(o).replace(
											    new RegExp(
												    '(?![^&;]+;)(?!<[^<>]*)(' +
												    $.ui.autocomplete.escapeRegex(request.term) +
												    ')(?![^<>]*>)(?![^&;]+;)', 'gi'
											    ), '<strong>$1</strong>');
					                result.value = valueGetter(o);
					                result.originalObject = o;
					                return result;
					            });
					            response(lastRequestResults);
					        });
					        webServiceMethodName.apply(null, params);
					    },
					    select: function (event, data) {
					        if (hiddenField) {
					            hiddenField.val(objectIdGetter(data.item.originalObject)).change();
					        }
					    },
					    change: function (event, ui) {
					        if (!ui.item) {
					            var value = input.val();
					            var filteredArray = $.grep(lastRequestResults, function (o, i) { return value.search(new RegExp('^' + o.value + '$')) >= 0; });
					            if (filteredArray.length > 0) {
					                value = filteredArray[0].value;
					            } else if (hiddenField) {
					                value = '';
					                hiddenField.val(value).change();
					            }
					            // remove invalid value, as it didn't match anything
					            $(this).val(value).change();
					            input.data('autocomplete').term = value;
					        }
					    }
					})
					.addClass('ui-widget ui-widget-content')
                    .removeClass('ui-corner-all');

            input.data('autocomplete')._renderItem = function (ul, item) {
                return $('<li></li>')
						.data('item.autocomplete', item)
						.append('<a>' + item.label + '</a>')
						.appendTo(ul);
            };

            $('<a>')
					.attr('tabIndex', -1)
					.attr('title', 'Show All Items')
					.appendTo(wrapper)
					.button({
					    icons: {
					        primary: 'ui-icon-triangle-1-s'
					    },
					    text: false
					})
					.removeClass('ui-corner-all')
					.addClass('ui-corner-right ui-combobox-toggle')
					.click(function () {
					    // close if already visible
					    if (input.autocomplete('widget').is(':visible')) {
					        input.autocomplete('close');
					        return;
					    }

					    // work around a bug (likely same cause as #5265)
					    $(this).blur();

					    // pass empty string as value to search for, displaying all results
					    input.autocomplete('search', '');
					    input.focus();
					});
        },

        destroy: function () {
            this.wrapper.remove();
            this.element.show();
            $.Widget.prototype.destroy.call(this);
        }
    });
})(jQuery);