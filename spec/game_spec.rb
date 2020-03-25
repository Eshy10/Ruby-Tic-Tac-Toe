require_relative '../lib/game.rb'

RSpec.describe Game do
  let(:array_1) { %w[X X X _ _ _ _ _ _] }
  let(:array_2) { %w[_ _ _ X X X _ _ _] }
  let(:array_3) { %w[_ _ _ _ _ _ X X X] }
  let(:array_4) { %w[X O X _ _ _ _ _ _] }
  let(:array_5) { %w[X _ _ X _ _ X _ _] }
  let(:array_6) { %w[_ O _ _ O _ _ O _] }
  let(:array_7) { %w[_ _ O _ _ O _ _ O] }
  let(:array_8) { %w[O _ _ _ O _ _ _ O] }
  let(:array_8) { %w[_ _ O _ O _ O _ _] }
  let(:array_9) { %w[_ _ X O _ O _ _ _] }
  let(:array_10) { %w[_ _ _ O _ O _ _ O] }
  let(:game) { Game.new }

  describe '#winning_condition' do
    context 'when the list of user input generate a winning condition' do
      it 'should return true' do
        expect(game.winning_condition(array_1)).to eq(true)
        expect(game.winning_condition(array_2)).to eq(true)
        expect(game.winning_condition(array_3)).to eq(true)
        expect(game.winning_condition(array_5)).to eq(true)
        expect(game.winning_condition(array_6)).to eq(true)
        expect(game.winning_condition(array_7)).to eq(true)
        expect(game.winning_condition(array_8)).to eq(true)
      end
    end

    context 'when the list of user input does not generate a winning condition' do
      it 'should return false' do
        expect(game.winning_condition(array_4)).not_to eq(true)
        expect(game.winning_condition(array_9)).not_to eq(true)
      end
    end
  end
end
