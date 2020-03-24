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
      expect(interface.user_details).not_to eq([nil])
      end 
    end
end