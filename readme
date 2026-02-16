# gml_socket_server • Simple Server Test for GameMaker Studio

A lightweight networking server (and client helpers) designed to test and accelerate multiplayer / realtime features for **GameMaker Studio** projects.

This project provides:
- **`gml_socket_server`**: raw server implementation (local or dedicated)
- **`gml_socket_client`**: client connector used inside GameMaker projects
- **`gml_game`**: example GameMaker project (client-side) using the connector

> Goal: a **simple API** for game developers, **multiple protocol options**, and **cross-platform** support.

---

## Architecture

`gml_game` (GameMaker)  
→ connects to → `gml_socket_server` (local or dedicated)  
→ via → `gml_socket_client` (connector layer)

**Note:** protocol selection is configured client-side.

---

## Protocol Support (Estimated)

### Server (`gml_socket_server`)
- TCP
- UDP
- WS / WSS
- HTTP / HTTPS

### Client (`gml_game` + `gml_socket_client`)
- TCP
- UDP
- WS / WSS
- HTTP / HTTPS
- Bluetooth *(planned/experimental)*

> “Estimated” means this is the intended protocol surface. See **Roadmap** and **Status** below for what is actually implemented right now.

---

## Features (Estimated)

- ✅ Multiple protocol support (TCP/UDP/WS/HTTP variants)
- ✅ Multiple clients support
- ✅ Simple API for game developers
- ✅ Easy integration with GameMaker Studio
- ✅ Cross-platform compatibility (Windows, macOS, Linux)
- ✅ Secure communication options (TLS for WSS/HTTPS)
- ✅ Real-time data exchange between server and clients
- ✅ Synchronous + asynchronous communication patterns
- ✅ Error handling + debugging helpers
- ✅ Logging & monitoring (server performance + client interactions)
- ✅ Customizable settings (port, max clients, timeouts, etc.)
- ✅ IPv4 + IPv6 support
- ✅ Multiple server instances (regions / game modes)
- ✅ Optional integration with GameMaker built-in networking functions

---

## Project Structure

another time project structure details here, including file organization, key modules, and how to navigate the codebase.