var t = async_load[? "type"];

if (t == network_type_connect) {
    show_message("Conectou!");

    // manda ping (termina com \n!)
    var b = buffer_create(256, buffer_grow, 1);
    buffer_write(b, buffer_text, "ping\n");
    network_send_packet(sock, b, buffer_tell(b));
    buffer_delete(b);
}

if (t == network_type_data) {
    // dependendo da versão, esses campos podem variar;
    // os mais comuns são "buffer" e "size".
    var bid  = async_load[? "buffer"];
    var size = async_load[? "size"];

    // lê o texto que chegou
    buffer_seek(bid, buffer_seek_start, 0);
    var msg = buffer_read(bid, buffer_text);

    show_debug_message("RECV: " + msg);
    show_message("Servidor disse: " + msg);
}

if (t == network_type_disconnect) {
    show_message("Desconectou");
}
