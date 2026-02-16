global.sock = network_create_socket(network_socket_tcp)
net = network_connect_raw(global.sock, global.server_uri, global.server_port);

show_message(net)