require_relative '../src/fizzbuzz'

describe 'fizzbuzz' do
  it 'returns 1 when input is 1' do
    expect(fizzbuzz(1)).to eq(1)
  end

  it 'returns fizz when input is 3' do
    expect(fizzbuzz(3)).to eq('fizz')
  end

  it 'returns fizz when input is mult of 3' do
    expect(fizzbuzz(9003)).to eq('fizz')
    expect(fizzbuzz(4716)).to eq('fizz')
    expect(fizzbuzz(27)).to eq('fizz')
  end

  it 'returns buzz when input is mult of 5' do
    expect(fizzbuzz(1000)).to eq('buzz')
    expect(fizzbuzz(25)).to eq('buzz')
    expect(fizzbuzz(101_710)).to eq('buzz')
  end

  it 'returns fizzbuzz when input is mult of 3 and 5' do
    expect(fizzbuzz(15)).to eq('fizzbuzz')
    expect(fizzbuzz(75)).to eq('fizzbuzz')
    expect(fizzbuzz(43_860)).to eq('fizzbuzz')
  end

  it 'returns input if not fizz/buzz' do
    expect(fizzbuzz(1)).to eq(1)
    expect(fizzbuzz(2)).to eq(2)
    expect(fizzbuzz(101)).to eq(101)
  end

  describe 'multiple_of?' do
    it 'returns true when input is mult of 3' do
      expect(9003.multiple_of?(3)).to eq(true)
    end

    it 'returns false when input #1 is not a mult of input #2' do
      expect(9003.multiple_of?(2)).to eq(false)
    end
  end
end
