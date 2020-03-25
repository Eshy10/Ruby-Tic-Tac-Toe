#!/usr/bin/env ruby
require_relative './main.rb'
require_relative '../lib/player.rb'
require_relative '../lib/game.rb'

new_game = Interface.new
new_game.user_inputs
new_game.play_again
