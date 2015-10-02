require "spec_helper"
require "class4"

describe Dragon do

  describe 'feed' do
    it 'full stomach' do
      dragon = Dragon.new('test')
      dragon.feed
      expect(dragon.stuffInBelly).to eq 9
    end
  end

  describe 'walk' do
    it 'empty intestine' do
      dragon = Dragon.new('test')
      dragon.walk
      expect(dragon.stuffInIntestine).to eq 1
    end
  end

  describe 'putToBed' do
    it 'three times sleep' do
      dragon = Dragon.new('test')
      expect{ dragon.putToBed }.to output("あなたは test を寝かしつけます.\ntest はいびきをかいて, 部屋中煙だらけ.\ntest はいびきをかいて, 部屋中煙だらけ.\ntest はいびきをかいて, 部屋中煙だらけ.\ntest はゆっくり目を覚ます.\n").to_stdout
    end
  end

  describe 'rock' do
    it 'not sleep' do
      dragon = Dragon.new('test')
      expect{ dragon.rock }.to output("あなたは test を優しく揺すります.\n彼は短くうとうと...\n...でもやめるとすぐ起きちゃう.\n").to_stdout
    end
  end
end
