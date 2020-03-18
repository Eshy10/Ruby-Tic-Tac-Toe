#!/usr/bin/env ruby
puts 'Hello World!'

class Interface
  def initialize()
    @field = %w[_ _ _ _ _ _ _ _ _]
    @players = []
  end

  def display_field
    num = '258'
    @field.each_with_index do |field, index|
      print "| #{field} |"
      puts "\n" if num.include?(index.to_s) && index != 0
    end
  end

  def user_details
    puts 'The Tic-Tac-Toe Game requires two players'
    puts 'Player_1, please enter your name'
    player1 = gets.chomp
    puts 'Player_2, please enter your name'
    player2 = gets.chomp
    @players << player1
    @players << player2
    @players
  end

  def user_inputs
    @players.each do |player|
      puts "#{player} pick a number between 0-8"
      input = gets.chomp
      puts @players[0]
      puts player
      if player.include?(@players[0])
        @field[input.to_i] = 'X'
        display_field
      else
        @field[input.to_i] = 'O'
      end
    end
    display_field
  end

  def update_input
    @field.get_inputs
  end
end

new_game = Interface.new
new_game.user_details
new_game.user_inputs
