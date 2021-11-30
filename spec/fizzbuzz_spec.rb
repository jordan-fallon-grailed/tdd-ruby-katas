require_relative '../src/fizzbuzz'

describe 'fizzbuzz' do
  it 'returns input when not a multiple of 3, 5 or 7' do
    expect(fizzbuzz 1).to eq 1
    expect(fizzbuzz 73).to eq 73
    expect(fizzbuzz 68).to eq 68
    expect(fizzbuzz 19492).to eq 19492
  end

  it 'returns fizz for multiples of 3' do
    expect(fizzbuzz 3).to eq 'fizz'
    expect(fizzbuzz 9).to eq 'fizz'
    expect(fizzbuzz 27).to eq 'fizz'
    expect(fizzbuzz 4023).to eq 'fizz'
  end

  it 'returns buzz for multiples of 5' do
    expect(fizzbuzz 5).to eq 'buzz'
    expect(fizzbuzz 25).to eq 'buzz'
    expect(fizzbuzz 1025).to eq 'buzz'
    expect(fizzbuzz 100).to eq 'buzz'
  end

  it 'returns wazz for multiples of 7' do
    expect(fizzbuzz 7).to eq 'wazz'
    expect(fizzbuzz 28).to eq 'wazz'
    expect(fizzbuzz 658).to eq 'wazz'
    expect(fizzbuzz 77).to eq 'wazz'
  end

  it 'returns fizzbuzz for multiples of 3 and 5' do
    expect(fizzbuzz 15).to eq 'fizzbuzz'
    expect(fizzbuzz 1110).to eq 'fizzbuzz'
    expect(fizzbuzz 255).to eq 'fizzbuzz'
    expect(fizzbuzz 135).to eq 'fizzbuzz'
  end

  it 'returns fizzwazz for multiples of 3 and 7' do
    expect(fizzbuzz 21).to eq 'fizzwazz'
    expect(fizzbuzz 1974).to eq 'fizzwazz'
    expect(fizzbuzz 882).to eq 'fizzwazz'
  end

  it 'returns buzzwazz for multiples of 5 and 7' do
    expect(fizzbuzz 140).to eq 'buzzwazz'
    expect(fizzbuzz 1645).to eq 'buzzwazz'
    expect(fizzbuzz 7735).to eq 'buzzwazz'
  end

  it 'returns fizzbuzzwazz for multiples of 3, 5 and 7' do
    expect(fizzbuzz 210).to eq 'fizzbuzzwazz'
    expect(fizzbuzz 3465).to eq 'fizzbuzzwazz'
    expect(fizzbuzz 2205).to eq 'fizzbuzzwazz'
  end
end
