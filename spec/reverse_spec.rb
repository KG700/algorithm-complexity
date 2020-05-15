require 'reverse'

describe Array do

  it 'will return [1] when given [1]' do
    expect(subject.my_reverse([1])).to eq [1]
  end

  it 'will return [1, 1] when given [1, 1]' do
    expect([1, 1].my_reverse.to eq [1, 1]
  end

  it 'will return [2, 1] when given [1, 2]' do
    expect(subject.my_reverse([1, 2])).to eq [2, 1]
  end

  it 'will return [1, 8, 3, 2, 7, 3, 6] when given [6, 3, 7, 2, 3, 8, 1]' do
    expect(subject.my_reverse([6, 3, 7, 2, 3, 8, 1])).to eq [1, 8, 3, 2, 7, 3, 6]
  end

end
