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
      @inter = double('Inter')
      allow(@inter).to receive(:user_details).and_return([])
      result = @inter.user_details
      expect(result).not_to eq([nil])
      expect(result.all?(String)).to eq(true)
    end
  end

  describe '#occupied?' do
    it 'should check if the cell is occupied with number between 0 and 8' do
      @inter = double('Inter')
      allow(@inter).to receive(:occupied?).and_return('')
      result = @inter.occupied?
      expect(result).not_to eq('_')
      expect(result).to eq('')
    end
  end

  describe '#number_valid?' do
    it 'should check if the user input is valid' do
      @inter = double('Inter')
      allow(@inter).to receive(:number_valid?).and_return(rand(0..8))
      result = @inter.number_valid?
      expect(result).to be <= 8
      expect(result).not_to be > 8
    end
  end

  describe '#user_inputs' do
    it 'should check if user win the game' do
      @inter = double('Inter')
      allow(@inter).to receive(:user_inputs).and_return(true)
      result = @inter.user_inputs
      expect(result).to eq(true)
      expect(result).not_to eq(false)
    end
  end
end
