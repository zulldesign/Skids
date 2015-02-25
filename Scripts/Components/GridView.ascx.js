Sys.Application.add_load(
    function () {
        $('div.gridViewContainer').each(
            function () {
                var gridview = $(this);
                if (!gridview.data('cbx-initialized')) {
                    gridview.find('thead :checkbox')
                            .each(
                                function () {
                                    var head = $(this);
                                    var cbxs = new Array();
                                    var index = head.parent('th').index();
                                    gridview.find('tbody>tr').each(
                                        function () {
                                            cbxs.push($(this).children().eq(index).find(':checkbox').first());
                                        }
                                    );
                                    cbxs = $(cbxs);
                                    head.change(
                                        function () {
                                            cbxs.each(head.is(':checked') ? function () { this.attr({ checked: 'checked' }); } : function () { this.removeAttr('checked'); });
                                        }
                                    );
                                    cbxs.each(
                                        function (i) {
                                            this.change(
                                                function () {
                                                    if ($(cbxs).filter(function () { return this.is(':checked'); }).length == cbxs.length) {
                                                        head.attr({ checked: 'checked' });
                                                    }
                                                    else {
                                                        head.removeAttr('checked');
                                                    }
                                                }
                                            );
                                            if (i == 0) {
                                                this.change();
                                            }
                                        }
                                    );
                                }
                            );
                    gridview.data('cbx-initialized', true);
                }
            }
        );
        $('a.gridview.enableAll').unbind().click(
            function () {
                $(this).closest('div.gridViewContainer').find('table.gridView>thead>tr>th').first().find(':checkbox').attr({ checked: 'checked' }).change();
            }
        );
        $('a.gridview.disableAll').unbind().click(
            function () {
                $(this).closest('div.gridViewContainer').find('table.gridView>thead>tr>th').first().find(':checkbox').removeAttr('checked').change();
            }
        );
    }
);
