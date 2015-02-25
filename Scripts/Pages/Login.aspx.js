Sys.Application.add_load(
    function () {
        $('a.rounded').rounded();
        $('#aLogin').click(
            function () {
                $(this).next('input').click();
            }
        );
    }
);