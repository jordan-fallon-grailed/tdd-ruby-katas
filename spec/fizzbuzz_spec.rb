require_relative '../src/fizzbuzz'

describe 'fizzbuzz' do
  it 'returns 1 for an input of 1' do
    expect(fizzbuzz 1).to eq 1
  end
end
