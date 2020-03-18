require_relative 'main.rb'

class Logic
    def initialize
        
    end

    def winning_condition(arr)
        arr[0..2].all? do |num|
          if num == "x" || num == "o"
            puts "You won!"
          end
        end

        arr[3..5].all? do |num|
            if num == "x" || num == "o"
              puts "You won!"
            end
        end

        arr[6..8].all? do |num|
            if num == "x" || num == "o"
              puts "You won!"
            end
        end
    end

end

new_game = Logic.new
new_game.winning_condition(["x", "X", "X"])