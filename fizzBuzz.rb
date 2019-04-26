for i in 1..50 do
    if i % 3 == 0
        puts "Fizz"
        if i % 5 == 0
            puts "FizzBuzz"
        end
    end
    if i % 5 == 0
        puts "Buzz"
    end
    if i % 3 != 0 && i % 5 != 0
        puts "#{i}"
    end
end