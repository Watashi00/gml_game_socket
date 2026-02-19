# initial architectural decisions

- Mapping 
        key      :      value
 - METHOD:ROUTE -> CONTROLLER:HANDLER
 - e.g. GET:/users -> UserController:getUsers

- Workers
    - req -> WorkerPool -> Worker -> Controller:Handler -> Response
    - WorkerPool: manage a pool of workers to handle incoming requests
    - Worker: a virtual thread that processes a request and generates a response

- Annotation-based routing for http requests
    - Use annotations to define routes in controller classes
    - e.g. @Route("/users", method = "GET") on method; default method is GET if not specified
    - e.g  @RouterMapping("/users")
    - During application startup, scan for annotated methods/classes and populate the routing map

- Annotation-based routing for websocket messages
    - Use annotations to define websocket routes in controller classes
    - e.g @WebSocketController on class to indicate it's a websocket controller
    - e.g. @WebSocketRoute("/chat") on method to handle websocket messages sent to /chat endpoint

flux:
# HTTP
accept socket
  -> parse HTTP request
    -> Router resolves handler
      -> WorkerPool dispatch(task)
        -> Worker (virtual thread)
          -> Controller
            -> Service
              -> build Response
                -> write response to socket

# WebSocket
accept socket
  -> HTTP upgrade handshake
    -> frame loop
      -> WS Router resolves handler
        -> WorkerPool dispatch(task)
          -> Worker
            -> WS Controller
              -> Service
                -> send frame


# Game TCP
accept socket
  -> protocol decoder (length-prefix / binary / json)
    -> GameRouter resolves handler
      -> WorkerPool dispatch(task)
        -> Worker
          -> GameController
            -> GameService
              -> encode response
                -> write to socket

