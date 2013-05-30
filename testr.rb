def hello_world(name)
	puts "Hello, #{name}"
end

hello_world("Patsy")

def area(length, width)
  length*width
end

def volume(length, width, height)
  area(length,width)*height
end


def square(number)
  number*number
end

def cube(number)
  square(number)*number
end

def fizzbuzz()
  i = 0
  while i < 101
    case 
     when i % 3 == 0 && i % 5 ==0
       puts "FizzBuzz"
     when i % 3 != 0 && i % 5 ==0
      puts "Buzz"
     when i % 3 == 0 && i % 5 != 0
      puts "Fizz"
     else
      puts i
     end
    i += 1
  end
end

def fizzbuzzer()
  i = 0
  while i < 101

     if i % 3 == 0 && i % 5 == 0
        puts "FizzBuzz"
       elsif i % 3 == 0
        puts "Fizz"
       elsif i % 5 == 0
        puts "Buzz"
       else 
        puts i
      end

    i += 1

  end
end


def fizzb()
  (1...101).each do |x|
     case 
     when x % 15 == 0
       puts "FizzBuzz"
     when x % 3 != 0 && x % 5 == 0
      puts "Buzz"
     when x % 3 == 0 && x % 5 != 0
      puts "Fizz"
     else
    puts x
     end
  end
end
