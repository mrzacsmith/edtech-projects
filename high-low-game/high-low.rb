def game
  ran_num = rand(25)
  puts "Guess a number between 0 and 24:"

  @counter = 1
  loop do
    user_answer = gets.chomp.to_i

    if user_answer == ran_num
      puts "You win! The correct number is #{ran_num}"
      puts "#{@counter}"
      break
    elsif user_answer > ran_num
      puts "You guessed to high! Guess a lower number!"
      @counter += 1
    elsif user_answer < ran_num
      puts "You guessed to low! Guess a higher number!"
      @counter += 1
    end
  end
end

game
