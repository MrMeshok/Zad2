$(document).ready(function() {
    $("#add_book").click(function() {
        $($(this).next()).toggle(400)
    });
    $(".edit_book").click(function() {
        $($(this).next().next()).toggle(400)
    });
});