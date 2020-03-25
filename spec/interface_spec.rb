require_relative '../bin/main.rb'
require_relative '../lib/player.rb'

describe Interface do
    let(:interface) { Interface.new }
     let(:player) { Players.new }
     let(:array_4) { %w[X O X _ _ _ _ _ _] }
  describe '#initialize' do
    it 'should set @field to an array' do
      field = interface.instance_variable_get(:@field)  
      arr = %w[_ _ _ _ _ _ _ _ _] 
      expect(field).to eq(arr)  
    end
    end

    describe '#user_details' do
      it 'should return an array of two players' do
      expect(interface.user_details).not_to eq([nil])
      end 
    end

    describe '#occupied?' do 
        it "should check if the cell is occupied with number between 0 and 8" do
            arr = %w[_ _ _ _ _ _ _ _ _] 
            sym = 'X' || 'O'
            index = gets.chomp.to_i
            expect(interface.occupied?(arr, index, sym)).not_to eq('_')
        end
      end
    
    describe '#number_valid?' do
        it 'should check if the user input is valid' do
            index = gets.chomp.to_i
            player = 'me'
            expect(interface.number_valid?(index, player)).to be < 8

        end
    end
end