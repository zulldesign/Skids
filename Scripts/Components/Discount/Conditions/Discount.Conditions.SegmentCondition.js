Type.registerNamespace('Magelia.WebStore.Discount.Conditions');

Magelia.WebStore.Discount.Conditions.SegmentCondition = function (editor, model) {
    this.editor = editor;
    this.initialize(model);
};

Magelia.WebStore.Discount.Conditions.SegmentCondition.prototype = {
    identifier: 'segment',
    template: 'SegmentConditionEditor',
    category: 'user',

    initialize: function (model) {
        this.model = $.extend({ Segment: null }, model);
    },

    updateSegment: function (segment) {
        this.model.Segment = segment ? segment : null;
        this.editor.refresh();
    },

    implementAutoComplete: function (textbox) {
        var self = this;
        textbox.autocomplete(
            {
                minLength: 0,
                autoFocus: true,
                source: function (request, response) {
                    Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetSegments(
                        textbox.val(),
                        function (segments) {
                            response($.map(segments.where(function (s) { return s != self.model.Segment; }), function (segment) { return { label: segment, value: segment }; }));
                        }
                    );
                },
                select: function (e, ui) {
                    self.updateSegment(ui.item.value);
                }
            }
        );
    }
};
