#!/usr/bin/env ruby
require_relative "./game_logic.rb"

class Interface

  attr_reader :players

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
    a = Logic.new
    game_over = false
    until game_over == true
    @players.each do |player|
      puts "#{player} pick a number between 0-8"
      input = gets.chomp
      input = a.is_number_valid?(input.to_i, player)
      if player.include?(@players[0])
        a.occupied?(@field, input.to_i, 'X')
        display_field
      return game_over = true if a.winning_condition(@field, @players[0])
      else
        a.occupied?(@field, input.to_i, 'O')
        display_field
      return game_over = true if a.winning_condition(@field, players[1])
      end
    end
    end
  end

  def update_input
    @field.get_inputs
  end
end

new_game = Interface.new
p new_game
new_game.user_details
new_game.user_inputs
