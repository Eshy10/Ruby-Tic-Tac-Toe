#!/usr/bin/env ruby
puts 'Hello World!'

class Interface
    def initialize()
        @field = ["__", "__", "__", "__", "__", "__", "__", "__", "__"]
    end

    def display_field
       @field.each_with_index do |field, index|
        print "| #{field} |"
        if (index == 2 || index == 5 || index == 8) && index != 0
            puts "\n"
        end
    end
    end
end

new_game = Interface.new
new_game.display_field