def greet(name, time_of_day)
  return "Good #{time_of_day}, #{name.capitalize()}"
end

p greet("bob", "morning")

def myFunction(parameter)
  return parameter
end

p myFunction(12345)
