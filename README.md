# Pico Labs

## Single Pico Lab Questions

### Part 1

1. *What parsing method did you choose?*

   I installed the node pico engine on my machine and then ran it. I just loaded in rules from a url
   that I setup to locally host my rule files

2. *What was the output of the test you ran in (4)? How many directives were returned? How many rules do you think ran?*

   Answer

3. *What was the output of the test you ran in (6)? How many directives were returned? How many rules do you think ran?*

   Answer

4. *How do you account for the difference? Diagram the event flow within the pico (i.e. show the event flow from when the pico receives event to the directives being created).*

   Answer

### Part 2

1. *What did you observe in (2) above? How do you explain it?*

   Answer

2. *Would you say that the new rule in (3) is an event intermediary? If so, what kind? Justify your answer.*

   Answer

3. *How do your logs show that the find_long_trips rule works? Pick out specific lines and explain them.*

   Answer

4. *How would you modify the system so that the long_trip is not hard coded without relying on an external service?*

   Answer

### Part 3

1. *Explain how the rule collect_trips and the function trips illustrate an event-query API.*

   Answer

2. *Explain your strategy for finding trips that aren't long trips in your short_trips function.*

   Answer

3. *What happens if provides doesn't list the name of the trips function?*

   Answer

4. *What happens if shares doesn't list it?*

   Answer

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
