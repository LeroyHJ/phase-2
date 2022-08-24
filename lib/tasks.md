# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
# EXAMPLE

# `extract_upper` extracts uppercase words from a list of words


# The method doesn't print anything or have any other side-effects
```

```ruby

class ToDoList
  def initializer
  end

  def add(task)
  # add tasks
  end

  def list
  # returns tasks as strings
  end

  def complete(task)
  #returns completed tasks as checked
  end
end

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby

# Test 1
tasks.add("Do food shopping") 
tasks.add("Clean the bath") 
tasks.list => ["Do food shopping", "Clean the bath"]

# Test 2
tasks.add("Do food shopping") 
tasks.add("Clean the bath") 
tasks.complete("Clean the bath")
tasks.list => ["Do the food shopping"]

```

```ruby

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

