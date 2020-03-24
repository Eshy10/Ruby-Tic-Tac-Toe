require_relative '../bin/main.rb'
require_relative '../lib/player.rb'

describe Interface do
    let(:interface) { Interface.new }
    # let(:player) { Players.new }
  describe '#initialize' do
    it 'should set @field to an array' do
      field = interface.instance_variable_get(:@field)  
      arr = %w[_ _ _ _ _ _ _ _ _] 
      expect(field).to eq(arr)  
    end
    end

    describe '#user_details' do
      it 'it should call gets.chomp to get input from the user' do
        input = 
        allow(player).to receive(:gets).and_return(input)

        expect(input).to receive(:chomp)
        expect(player).to receive(:gets)
        player.get_move
      end 
    end
end