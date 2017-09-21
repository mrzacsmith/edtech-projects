def game
  ran_num = rand(25)
  puts "Guess a number between 0 and 24:"

  loop do
    user_answer = gets.chomp.to_i

    if user_answer == ran_num
      puts "You win! The correct number is #{ran_num}"
      break
    elsif user_answer > ran_num
      puts "You guessed to high! Guess a lower number!"
    elsif user_answer < ran_num
      puts "You guessed to low! Guess a higher number!"
    end
  end
end

game
