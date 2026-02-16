if(keyboard_check_pressed(vk_space)) {
	my_message = get_string("Your message to server", "server message");
	send_json({op:my_message})
}