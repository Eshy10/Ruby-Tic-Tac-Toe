require_relative "../lib/game.rb"


RSpec.describe Game do
    #let(:array_1) { ['O', 'X', 'X'] }
    let(:array_2) { ['_', '_', '_', 'X', 'X', 'X'] }
    let(:array_3) { ['_', '_', '_', '_', '_', '_', 'X', 'X', 'X'] }
    let(:array_4) { ['X', 'O', 'X', '_', '_', '_'] }
    #let(:game) { Game.new }

    describe '#winning_condition' do
        context 'when the condition is winning' do
            it 'should return true' do
                game = Game.new
                expect(game.winning_condition(['_', 'X', 'X'])).to eq(true)
                #expect(game.winning_condition(array_1)).to eq(true)
                #expect(game.winning_condition(array_3)).to eq(true)
            end
        end

        context "when condition is not winning" do
            it 'should return false' do
                game = Game.new
                expect(game.winning_condition(array_4)).not_to eq(true)
            end
        end
    end
end
