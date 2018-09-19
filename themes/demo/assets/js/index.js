console.log('Hello world!');

$('#form').submit(function () {
    // Maak je API-call hier
    console.log('Gonna call the API!');
    console.log($('#form').serializeArray());

    return false;
});