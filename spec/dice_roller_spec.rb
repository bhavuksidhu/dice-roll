require 'dice_roller'

RSpec.describe DiceRoller do
  let(:die6) { Dice.new(6) }
  let(:die8) { Dice.new(8) }
  let(:roller) { DiceRoller.new(die6, die8) }

  it 'rolls dice and returns results' do
    result = roller.roll_all
    expect(result[:results].length).to eq(2)
    expect(result[:results].all? { |value| (1..8).include?(value) }).to be true
    expect(result[:total]).to be_between(2, 14)
  end

  it 'returns correct description' do
    result = roller.roll_all
    expect(result[:description]).to eq("Die 1: 6 sides, Die 2: 8 sides")
  end
end
