#rock paper scissors

def new_match()
    answer = 0
    until answer == "1" || answer == "2" do
        puts "Please select 1 or 2 players by typing either 1 or 2: "
        answer = "1"
        if answer == "1"
            new_bot_game()
            #test_bot_game()
        end
        if answer == "2"
                new_two_player_game()
        end
        if answer != "1"
            if answer != "2"
            puts "Please enter either 1 or 2: "
            end
        end
    end
end

def new_two_player_game()
    p1_score = 0
    p2_score = 0
    until p1_score == 2 || p2_score == 2 do
        puts "Enter either 'Rock', 'Paper', or 'Scissors'"
        puts "Player 1, Enter your hand: "
        player_1 = gets.chomp.downcase
        puts "Player 2, Enter your hand: "
        player_2 = gets.chomp.downcase
        if player_1 == "rock"
            if player_2 == "paper"
                p2_score += 1
                puts "Player 2 wins!" 
            elsif player_2 == "scissors"
                p1_score += 1
                puts "player 1 wins!"
            end
        end
        if player_1 == "paper"
            if player_2 == "scissors"
                p2_score += 1
                puts "Player 2 wins!"
            elsif player_2 == "rock"
                p1_score += 1
                puts "Player 1 wins!"
            end
        end
        if player_1 == "scissors"
            if player_2 == "paper"
                p1_score += 1
                puts "Player 1 wins!"
            elsif player_2 == "rock"
                p2_score += 1
                puts "Player 2 wins!"
            end
        end
    end
end

def new_bot_game()
    p1_score = 0
    computer_score = 0
    puts "Enter either 'Rock', 'Paper', or 'Scissors'"
    puts "Player 1, Enter your hand: "
    player_1 = gets.chomp.downcase
    computer = ["rock", "paper", "scissors"].sample
    until p1_score == 2 || computer_score == 2 do
        if player_1 == "rock"
            if computer == "paper"
                computer_score += 1
                puts "Player 2 wins!" 
            elsif computer == "scissors"
                p1_score += 1
                puts "player 1 wins!"
            end
        end
        if player_1 == "paper"
            if computer == "scissors"
                computer_score += 1
                puts "Player 2 wins!"
            elsif computer == "rock"
                p1_score += 1
                puts "Player 1 wins!"
            end
        end
        if player_1 == "scissors"
            if computer == "paper"
                p1_score += 1
                puts "Player 1 wins!"
            elsif computer == "rock"
                computer_score += 1
                puts "Player 2 wins!"
            end
        end
    end
end

def test_bot_game()
    p1_score = 0
    computer_score = 0
    puts "Enter either 'Rock', 'Paper', or 'Scissors'"
    puts "Player 1, Enter your hand: "
    player_1 = "rock"
    computer = ["rock", "paper", "scissors"].sample
    until p1_score == 1 || computer_score == 2 do
        if player_1 == "rock"
            if computer == "paper"
                computer_score += 1
                puts "Player 2 wins!" 
            elsif computer == "scissors"
                p1_score += 1
                puts "player 1 wins!"
            end
        end
        if player_1 == "paper"
            if computer == "scissors"
                computer_score += 1
                puts "Player 2 wins!"
            elsif computer == "rock"
                p1_score += 1
                puts "Player 1 wins!"
            end
        end
        if player_1 == "scissors"
            if computer == "paper"
                p1_score += 1
                puts "Player 1 wins!"
            elsif computer == "rock"
                computer_score += 1
                puts "Player 2 wins!"
            end
        end
    end
end
new_match()