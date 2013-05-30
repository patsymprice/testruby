#  CalcIt - add, subtract, mult dive and exponents and square root
# 
#  need a calculator function that can be called again .. need more dry

#def is_numeric?(i)
#i.to_i.to_s == i || i.to_f.to_s == i
#end


def get_nums
   puts "Thank you, now we need two numbers from you."
   puts "What is your first number?"
   first_num = gets.chomp.to_f
   puts "What is your second number?"
   second_num = gets.chomp.to_f
   # add error checking on input
   return [first_num, second_num]
 end

def get_num
   puts "Thank you, now we need a number from you."
   puts "What is your number?"
   num = gets.chomp.to_f
  # if is_numeric(num)
  #  return num
   else
   end
  end


 def add(array)
   sum = (array[0] + array[1])
   puts "Adding #{array[0]} and #{array[1]} equals #{sum}"
 end

def subtract(array)
   diff = (array[0] - array[1])
   puts "Subtracting #{array[0]} and #{array[1]} equals #{diff}"
end

def multiply(array)
   mult = (array[0] * array[1])
   puts "Multplying #{array[0]} and #{array[1]} equals #{mult}"
 end

 def divide(array)
   if array[0] == 0
      puts "No dividing by zero!.. exiting..."
   else
     div_num = (array[0]/array[1]).round(2)
     puts "Dividing #{array[0]} with #{array[1]} equals #{div_num}"
   end
 end

 def exponent(array)
   exp = (array[0] ** array[1]).round(2)
   puts "Raising #{array[0]} to the #{array[1]} power equals #{exp}"
 end

 def square_rt(num)
   square = (Math.sqrt(num)).round(2)
   puts "Squaring  #{num} equals #{square}"
 end

def get_calc
  puts "What kind of calulation you want(Basic or Advanced)?"
  calc_type = gets.chomp.downcase
  return calc_type
end

def basic_calc
  puts "Would you like to: add, subtract, multiply or divide?"
  calc_function = gets.chomp.downcase
  array1 = get_nums()

  case
   when calc_function == "add"
    add(array1) 
   when calc_function == "subtract" 
    subtract(array1)  
   when calc_function == "multiply" 
     multiply(array1)  
   when calc_function == "divide" 
     divide(array1)
   end
end

def advanced_calc
  puts "You have asked for advanced functions."
  puts "Would you like to do an exponent or a square root?"
  calc_function = gets.chomp.downcase

   if calc_function == "exponent"
     array1 = get_nums() 
     exponent(array1)
   elsif calc_function == "square root"
     num1 = get_num()
     square_rt(num)
   else
     puts "I don't know how to help you...exiting... "
   end
end

# what kind of calc do you want
# based on that call the right calculator program
# once done ask if you want to run another function
# 
def calculate()
  calc_type = get_calc()
  if calc_type == "basic"
    basic_calc
  elsif calc_type == "advanced"
    advanced_calc
  else
     puts "You don't seem to want to use a calculator... exiting..."
  end
end

input = "y"

while input == "y"
  puts "Would you like to calculate something (y/n)?"
  input = gets.chomp.downcase
  if input == "y"
    calculate()
  else
    puts "Good bye"
  end
end

