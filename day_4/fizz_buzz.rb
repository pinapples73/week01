def fizz_buzz(number)
  if ((number % 3 == 0) && (number % 5 == 0))
    return 'fizz buzz'
  elsif (number % 5 == 0)
    return 'buzz'
  elsif (number % 3 == 0)
    return 'fizz'
  else
    return number.to_s()
  end
end
