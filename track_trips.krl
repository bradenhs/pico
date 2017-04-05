ruleset track_trips {
  meta {
    name "track trips"
    author "Braden Snell"
    shares __testing
  }

  global {
    __testing = { "events": [ { "domain": "echo", "type": "hello" },
                              { "domain": "echo", "type": "message",
                                "attrs": [ "input" ] } ] }
  }

  rule hello {
    select when echo hello
    send_directive("say") with
      something = "Hello World"
  }

  rule process_trip is active {
    select when echo message mileage re#(.*)# setting(m);
    send_directive("trip") with
        trip_length = m
  }
}