require_relative '../bin/main.rb'
require_relative '../lib/player.rb'

describe Interface do
  let(:interface) { Interface.new }
  let(:player) { Players.new }
  describe '#initialize' do
    it 'should set @field to an array' do
      field = interface.instance_variable_get(:@field)
      arr = %w[_ _ _ _ _ _ _ _ _]
      expect(field).to eq(arr)
    end
  end

  describe '#user_details' do
    it 'should return an array of two players' do
      input = interface.user_details
      expect(input).not_to eq([nil])
      expect(input.all?(String)).to eq(true)
    end
  end

  describe '#occupied?' do
    it 'should check if the cell is occupied with number between 0 and 8' do
      arr = %w[_ _ _ _ _ _ _ _ _]
      sym = 'X'
      index = gets.chomp.to_i
      expect(interface.occupied?(arr, index, sym)).not_to eq('_')
      expect(arr[index]).to eq(sym)
    end
  end

  describe '#number_valid?' do
    it 'should check if the user input is valid' do
      index = gets.chomp.to_i
      player = 'me'
      expect(interface.number_valid?(index, player)).to be < 8
    end
  end

  describe '#user_inputs' do
    it 'should check if user win the game' do
      expect(interface.user_inputs).to eq(true)
    end
  end
end
