var t = async_load[? "type"];

if (t == network_type_data) {
	var bid = async_load[? "buffer"];
	buffer_seek(bid, buffer_seek_start, 0);

	var msg = buffer_read(bid, buffer_text);

	var data = json_parse(msg);

	if (data.op == "pong") {
	    show_debug_message("Server response " + data.op);
	}
	
}

if (t == network_type_disconnect) {
    show_message("Desconectou");
}



