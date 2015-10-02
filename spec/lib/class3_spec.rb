require "spec_helper"
require "class3"

describe OrangeTree do

  describe 'height' do
    it 'return height' do
      orangeTree = OrangeTree.new
      expect(orangeTree.height).to eq 0
    end
  end

  describe 'one_year_passe' do
    it 'add year' do
      orangeTree = OrangeTree.new
      orangeTree.one_year_passes
      expect(orangeTree.year).to eq 1
    end

    it 'clear orange' do
      orangeTree = OrangeTree.new
      orangeTree.one_year_passes
      orangeTree.one_year_passes
      orangeTree.one_year_passes
      orangeTree.one_year_passes
      orangeTree.pich_an_orange
      orangeTree.one_year_passes
      expect(orangeTree.orange).to eq 5
    end

    it 'add orange' do
      orangeTree = OrangeTree.new
      orangeTree.one_year_passes
      orangeTree.one_year_passes
      orangeTree.one_year_passes
      orangeTree.one_year_passes
      expect(orangeTree.orange).to eq 4
    end
  end

  describe 'count_the_orange' do
    it 'count orange' do
      orangeTree = OrangeTree.new
      expect{ orangeTree.count_the_oranges }.to output("0個のオレンジがなっています").to_stdout
    end
  end

  describe 'pich_an_orange' do
    it 'pich an orange' do
      orangeTree = OrangeTree.new
      expect{ orangeTree.pich_an_orange }.to output("オレンジはなっていません").to_stdout
      orangeTree.one_year_passes
      orangeTree.one_year_passes
      orangeTree.one_year_passes
      orangeTree.one_year_passes
      expect{ orangeTree.pich_an_orange }.to output("おいしいオレンジです！").to_stdout
    end

  end
end
