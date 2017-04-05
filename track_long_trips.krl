ruleset track_long_trips {
  meta {
    name "track long trips"
    author "Braden Snell"
  }

  global {
    long_trip = 10
  }

  rule process_trip is active {
    select when car new_trip mileage re#(.*)# setting(m);
    fired {
      raise explicit event "trip_processed"
        attributes { "attrs" : event:attrs(), "timestamp" : time:now() }
    }
  }

  rule find_long_trips {
    select when explicit trip_processed
    pre {
      mileage = event:attr("attrs").mileage
      is_greater = mileage.as("Number") > long_trip
    }
    if is_greater then
      send_directive("found_long_trip")
        with new_long_trip = mileage
      fired {
        raise explicit event "found_long_trip"
          attributes { "mileage" : mileage }
      }
  }
}