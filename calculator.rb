#require 'pry'

puts "*****BASIC CALCULATOR*****"

def prompt(msg)
  puts "> #{msg}"
end

prompt "Enter the first number:"
num1 = gets.chomp

prompt "Enter an operator: + : add, - : subtract, * : multiply, or / : divide"
operation = gets.chomp

until ["+" , "-" , "*" , "/"].include? operation
  prompt "Please enter one of the following operators:"
  prompt "  + : add, - : subtract, * : multiply, or / : divide"
  operation = gets.chomp
end

prompt "Enter the second number:"
num2 = gets.chomp

#binding.pry

if operation == "+"
  prompt "#{num1} + #{num2} = #{num1.to_i + num2.to_i}"
elsif operation == "-"
  prompt "#{num1} - #{num2} = #{num1.to_i - num2.to_i}"
elsif operation == "*"
  prompt "#{num1} * #{num2} = #{num1.to_i * num2.to_i}"
elsif operation == "/"
  prompt "#{num1} / #{num2} = #{num1.to_f / num2.to_f}"
else
  prompt "Hmmm.. something went wrong here."
end
  