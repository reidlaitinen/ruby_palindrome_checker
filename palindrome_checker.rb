@input = ''

def check_even(input)

  i = 0
  j = input.length - 1
  while j >= input.length / 2
    if input[i] != input[j]
      puts "\n\t\t#{input} is not a palindrome!\n"
      menu
    else
      i += 1
      j -= 1
    end
  end
  puts "\n\t\t#{input} is a palindrome!\n"
  menu
end

def check_odd(input)

  center_index = (input.length / 2).floor
  input_arr = input.split('')

  i = 0
  j = input.length - 1
  while j >= input.length / 2
    if input[i] != input[j]
      puts "\n\t\t#{input} is not a palindrome!\n"
      menu
    else
      i += 1
      j -= 1
    end
  end
  puts "\n\t\t#{input} is a palindrome!\n"
  menu

end

def clean_input(input)
  input = input.gsub(/\W/, '').downcase
  puts "\tCleaned input: #{input}"
  return input
end

def check_palindrome(input)
  if input.length % 2 == 0
    check_even(input)
  else
    check_odd(input)
  end
end


def menu
    puts "\tPalindrome Checker! Type 'quit' to quit."
    print "\tInput: "
    @input = gets.strip
    if @input == 'quit'
      exit
    else
      check_palindrome(clean_input(@input))
    end
end

menu