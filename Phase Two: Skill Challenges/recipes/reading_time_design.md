# Reading Time Method Design Recipe

## 1. Describe the Problem
_Put your user story here and add any clarifying notes you might have.

> As a user
> So that I can manage my time
> I want to see an estimate of reading time for a text
> assuming that I can read 200 words a minute.

## 2. Design the Method Signature
_The signature of a method includes:

_The name of the method.
_What parameters it takes, their names and data types.
_What it returns and the data type of that value.
_Any other side effects it might have.
_Steps 3 and 4 then operate as a cycle.

```ruby
reading_time = calculate_reading_time(text)
# text is a string of words in it
# reading time is an integer representing minutes
```

## 3. Create Examples as Tests
_These are examples of the method being called with particular arguments
_and what the method should return in each situation.

_For complex challenges you might want to come up with a list of examples first and then test-drive them one by _one. For simpler ones you might just dive straight into writing a test for the first example you want to address.

```ruby
# 1
calculate_reading_time("")
# => 0

#2
calculate_reading_time("one")
# => 1

#3
calculate_reading_time(TWO_HUNDRED_WORDS)
# => 1

#4
calculate_reading_time(THREE_HUNDRED_WORDS)
# => 2 ie. ceiling/rounding up

#5
calculate_reading_time(FOUR_HUNDRED_WORDS)
# => 2

#6
calculate_reading_time(FIVE_THOUSAND_WORDS)
# => 25
```

## 4. Implement the Behaviour
_For each example you create as a test, implement the behaviour that allows the method to return the right value for the given arguments.

_Then return to step 3 until you have addressed the problem you were given. You may also need to revise your design, for example if you realise you made a mistake earlier.
