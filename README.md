# Pico Labs

## Single Pico Lab Questions

### Part 1

1. *What parsing method did you choose?*

   I installed the node pico engine on my machine and then ran it. I just loaded in rules from a url
   that I setup to locally host my rule files

2. *What was the output of the test you ran in (4)? How many directives were returned? How many rules do you think ran?*

   It was a while ago that I did this but the test was successful. Two rules were needed to be run to produce the resulting
   directives.

3. *What was the output of the test you ran in (6)? How many directives were returned? How many rules do you think ran?*

   The output again here consisted of a single directive. Only two rules needed to be run.

4. *How do you account for the difference? Diagram the event flow within the pico (i.e. show the event flow from when the pico receives event to the directives being created).*

   First an event is received. Then it is decoded. After that the resulting event object is processed and rules are
   scheduled. Then they are evaluated and rescheduled as needed. Eventually a response is assembled and a directive
   is outputted. Then the system wait for the next event.

### Part 2

1. *What did you observe in (2) above? How do you explain it?*

   The code seemed to perform as expected. I guess I wrote it correctly.

2. *Would you say that the new rule in (3) is an event intermediary? If so, what kind? Justify your answer.*

   Yes. Since it schedules an event for another rule to process it is an event intermediary. In KRL you can raise
   events so I suppose it's a "risen" event?

3. *How do your logs show that the find_long_trips rule works? Pick out specific lines and explain them.*

   When an event triggers it will log out the relevant info it needs to.

4. *How would you modify the system so that the long_trip is not hard coded without relying on an external service?*

   I could have the request specify what the exact length of a long trip actually is.

### Part 3

1. *Explain how the rule collect_trips and the function trips illustrate an event-query API.*

   Since they query events they are an event query API.

2. *Explain your strategy for finding trips that aren't long trips in your short_trips function.*

   In pre I simply get the mileage from the event. Comparing this I can get an is_greater boolean value. If it's greater
   I can send an event.

3. *What happens if provides doesn't list the name of the trips function?*

   Right now I don't think it processes that.

4. *What happens if shares doesn't list it?*

   In my currently implementation I think that it should work just fine.

## Multiple Picos Lab Questions

1. *Can a vehicle be in more than one fleet based on the code your wrote? Why or why not? What are the implications of a vehicle being in more than one fleet?*

   Answer

2. *How did you solve the problem of only notifying vehicles that you needed a report?*

   Answer

3. *How could you ensure that only certain picos can raise an event that causes a fleet report to be generated?*

   Answer

4. *How do the debug logs differ for Part 2 (Generating Reports via Functions) and Part 3 (Generating Reports via Scatter-Gather)?*

   Answer

5. *How can you know a report is done and all the vehicles that are going to respond have reported?*

   Answer

6. *Given your answer in (3), how would you recover if the number of responding vehicles is less than the total number of vehicles?*

   Answer
