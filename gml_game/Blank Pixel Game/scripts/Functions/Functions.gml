function send_json(data) {
    var str = json_stringify(data) + "\n";

    var b = buffer_create(1024, buffer_grow, 1);
    buffer_write(b, buffer_text, str);

    network_send_raw(global.sock, b, buffer_tell(b));
    buffer_delete(b);
}
