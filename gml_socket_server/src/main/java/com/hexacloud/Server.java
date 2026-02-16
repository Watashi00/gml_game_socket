package com.hexacloud;

import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

public class Server {

    public void run(int port) {
        try (ServerSocket server = new ServerSocket(port)) {
            while (true) {
                Socket socket = server.accept();
                System.out.println(socket.getPort());
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
