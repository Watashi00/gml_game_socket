package com.hexacloud;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.nio.charset.StandardCharsets;

public class Server {

    public void run(int port) {
        try (ServerSocket server = new ServerSocket(port)) {
            System.out.println("listening on port " + port);
            while (true) {
                Socket socket = server.accept();
                new Thread(() -> handle(socket)).start();
            }
        } catch (IOException e) {
            e.printStackTrace();
        } 
    }


    private void handle(Socket socket) {
        try(socket) {
            var in = new BufferedReader(new InputStreamReader(socket.getInputStream(), StandardCharsets.UTF_8));
            var out = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream(), StandardCharsets.UTF_8));
            out.write("OK\n");
            out.flush();

            String line;
            while((line = in.readLine()) != null ) {
                System.out.println("recv:" + line);

                out.write("echo " + line + "\n");
                out.flush();

            }

            System.out.println("Disconnected" + socket.getRemoteSocketAddress());
        } catch (IOException e ) {
            e.printStackTrace();
        } 
    }
}
