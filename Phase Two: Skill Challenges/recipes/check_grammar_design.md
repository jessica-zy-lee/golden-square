# Reading Time Method Design Recipe

## 1. Describe the Problem
_Put your user story here and add any clarifying notes you might have.

> As a user
> So that I can improve my grammar
> I want to verify that a text starts with a capital letter 
> and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature
_The signature of a method includes:

_The name of the method.
_What parameters it takes, their names and data types.
_What it returns and the data type of that value.
_Any other side effects it might have.
_Steps 3 and 4 then operate as a cycle.

```ruby
is_correct = check_grammar(text)
# text is a string of words in it
# is_correct is a Boolean depending on whether grammar checks out
```

## 3. Create Examples as Tests
_These are examples of the method being called with particular arguments
_and what the method should return in each situation.

_For complex challenges you might want to come up with a list of examples first and then test-drive them one by _one. For simpler ones you might just dive straight into writing a test for the first example you want to address.

```ruby
# 1
check_grammar("")
# fail "Not a sentence"

#2
check_grammar("Hello, I am Jess.")
# => is_correct returns true

#3
check_grammar("Hello, I am Jess")
# => false

#4
check_grammar("hello, I am Jess")
# => false

#5
check_grammar("HELLO, I am Jess.")
# => true (as HELLO still starts with H)

#6
check_grammar("Hello, I am Jess!")
# => true

#7
check_grammar("Hello, I am Jess?")
# => true

#6
check_grammar("Hello, I am Jess,")
# => false

```

## 4. Implement the Behaviour
_For each example you create as a test, implement the behaviour that allows the method to return the right value for the given arguments.

_Then return to step 3 until you have addressed the problem you were given. You may also need to revise your design, for example if you realise you made a mistake earlier.
