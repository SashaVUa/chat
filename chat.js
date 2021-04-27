var from=null,
    start=0,
    url='http://127.0.0.1:8080/messenger/chat1.php';

$(document).ready(function (){
    load();
    $('form').submit(function(e) {
        $.post(url, {
            message: $('#message').val(),
            from: from
        });
        $('#message').val('');
        return false;
    })
});

function load() {
    $.get(url + '?start=' + start, function (result) {
        if (result.items) {
            result.items.forEach(item=>{
                start = item.id;
                $('#messages').append(renderMessage(item));
            })
            $('#messages').animate({scrollTop: $('#messages')[0].scrollHeight});
        };
        /*setTimeout(load, 5000);*/
    });
}

function renderMessage(item){
    let time= new Date(item.created);
    time=`${time.getHours()}:${time.getMinutes() < 10 ? '0' : ''}${time.getMinutes()}`;
    return `<div class="msg"><p>${item.first_name} ${item.last_name}</p>${item.text}<span>${time}</span></div>`;
}
