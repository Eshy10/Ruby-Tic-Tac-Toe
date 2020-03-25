require_relative '../lib/game.rb'
require_relative '../lib/player.rb'

# rubocop:disable Metrics/MethodLength,Metrics/PerceivedComplexity,Metrics/CyclomaticComplexity
class Interface
  def initialize
    @field = %w[_ _ _ _ _ _ _ _ _]
  end

  def display_field
    num = '258'
    @field.each_with_index do |field, index|
      print "| #{field} |"
      puts "\n" if num.include?(index.to_s) && index != 0
    end
  end

  def user_details
    new_players = Players.new
    puts 'The Tic-Tac-Toe Game requires two players'
    puts 'Player_1, please enter your name'
    player1 = gets.chomp
    if player1.empty?
      puts 'Please enter your name!'
      player1 = gets.chomp
    end
    puts 'Player_2, please enter your name'
    player2 = gets.chomp
    if player2.empty?
      puts 'Please enter your name!'
      player2 = gets.chomp
    end
    players = new_players.players(player1, player2)
    players
  end

  def occupied?(arr, index, sym)
    if !arr[index].include?('_')
      puts 'Pick another value between 0 and 8, cell occupied, dont be a dummy!'
      index = gets.chomp.to_i
      if index > 8
        puts 'Please pick a number between 0 and 8!'
        index = gets.chomp.to_i
      end
      occupied?(arr, index, sym)
    else
      arr[index.to_i] = sym
    end
  end

  def number_valid?(number, player_name)
    if number > 8
      puts "#{player_name} put a value less then 9"
      number = gets.chomp.to_i
      number_valid?(number, player_name)
    else
      number
    end
  end

  def user_inputs
    new_game = Game.new
    game_over = false
    players = user_details
    until game_over == true
      players.each do |player|
        puts "#{player} pick a number between 0-8"
        input = gets.chomp
        input = number_valid?(input.to_i, player)
        if player.include?(players[0])
          occupied?(@field, input.to_i, 'X')
          display_field
          if new_game.winning_condition(@field, players[0])
            puts " #{players[0]} won the game"
            return game_over = true
          elsif !@field.include?('_')
            puts 'It is a draw'
            return game_over = true
          end
        else
          occupied?(@field, input.to_i, 'O')
          display_field
          if new_game.winning_condition(@field, players[1])
            puts " #{players[1]} won the game"
            return game_over = true
          elsif !@field.include?('_')
            puts 'It is a draw'
            return game_over = true
          end
        end
      end
    end
  end

  def play_again
    play = Interface.new
    game_over = true
    puts 'play again yes or no?'
    response = gets.chomp
    return game_over unless response == 'yes'

    play.user_inputs
    play.play_again
  end
end
# rubocop:enable Metrics/MethodLength,Metrics/PerceivedComplexity,Metrics/CyclomaticComplexity
