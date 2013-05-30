#  CalcIt - add, subtract, mult dive and exponents and square root
# 
#  need a calculator function that can be called again .. need more dry


puts "What kind of calulation you want(Basic or Advanced)?"
calc_type = gets.chomp.downcase

if calc_type == "basic"
   puts "Would you like to: add, subtract, multiply or divide?"
   calc_function = gets.chomp.downcase
   array1 = get_2nums()

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

elsif calc_type == "advanced"
   puts "You have asked for advanced functions."
   puts "Would you like to do an exponent or a square root?"
   calc_function = gets.chomp.downcase

   if calc_function == "exponent"
     array1 = get_2nums() 
     exponent(array1)
   elsif calc_function == "square root"
     num1 = get_1num()
     square_rt(num)
   else
     puts "I don't know how to help you...exiting... "
     break
   end

else
   puts "You don't seem to want to use a calculator... exiting..."
   break
end

 def get_2nums()
   puts "Thank you, now we need two numbers from you."
   puts "What is your first number?"
   first_num = gets.chomp.to_i
   puts "What is your second number?"
   second_num = gets.chomp.to_i
   return [first_num, second_num]
 end

def get_1num()
   puts "Thank you, now we need a number from you."
   puts "What is your number?"
   num = gets.chomp.to_i
   return num
 end

 def add(array)
   sum = array[0] + array[1]
   puts "Adding #{array[0]} and #{array[1]} equals #{sum}"
 end

def subtract(array)
   diff = array[0] - [array[1]
   puts "Subtracting #{array[0]} and #{array[1]} equals #{diff}"
end

def multiply(array)
   mult = array[0] * [array[1]
   puts "Multplying #{array[0]} and #{array[1]} equals #{mult}"
 end

 def divide(array)
   if array[0] == 0
      puts "No dividing by zero!.. exiting..."
      break
   else
     div_num = array[0]/[array[1]
     puts "Dividing #{array[0]} with #{array[1]} equals #{div_num}"
   end
 end

 def exponent(array)
   exp = array[0] ** [array[1]
   puts "Raising #{array[0]} to the #{array[1]} power equals #{exp}"
 end

 def square_rt(num)
   square = Math.sqrt(num)
   puts "Squaring  #{num} equals #{square}"
 end

=begin
def name_tag()
  puts "What is your first name?"
  first_name = gets.chomp
  puts "What is your last name?"
  last_name = gets.chomp
  puts "What is your gender (M/F)?"
  gender = gets.chomp
  puts "What is your age (integer please)?"
  age = gets.chomp.to_i

  if gender.downcase == "f"
     if age <= 19 
       puts "Miss #{first_name} #{last_name}"
     else
      puts "Mrs. #{first_name} #{last_name}"
     end
  else
     puts "Mr. #{first_name} #{last_name}"
  end
end
=end