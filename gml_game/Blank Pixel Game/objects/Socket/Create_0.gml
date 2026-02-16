client = network_create_socket(network_socket_tcp)
network_connect_raw(client, global.server_uri, global.server_port);

recv_buf = buffer_create(4096, buffer_grow, 1);

show_debug_message(recv_buf);	