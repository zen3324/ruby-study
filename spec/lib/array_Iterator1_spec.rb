require "spec_helper"
require "array_Iterator1"

describe ArrayIterator1 do
  let(:array_Iterator1) { described_class.new }

  describe 'array_Iterator1#getは標準入力を受け取ってstrにセットする' do
    before do
      allow(ARGF).to receive(:gets) { 1000 }
      array_Iterator1.get
    end

    it { expect(array_Iterator1.str).to eq 1000 }
  end

  describe 'array_Iterator1#printは標準出力に答えを出力する' do
    it { expect { array_Iterator1.print }.to output("answer is foo\n").to_stdout }
  end
end
