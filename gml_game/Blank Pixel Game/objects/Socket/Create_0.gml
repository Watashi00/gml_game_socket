global.sock = network_create_socket(network_socket_tcp)
net = network_connect_raw_async(global.sock, global.server_uri, global.server_port);

if(net != -1) {
	global.status = true;
}