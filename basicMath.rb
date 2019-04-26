    principal = 0
    rate = 0
    time = 0

    puts "Please enter the Principal amount: "
    prin = gets.to_i
    puts "Please enter the Interest Rate: "
    rate = gets.to_f
    puts "Please enter the time period in years: "
    time = gets.to_i

    puts "Your Accrued amount will be #{prin*(rate*time)}"
    