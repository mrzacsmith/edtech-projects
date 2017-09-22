require 'rspec'

describe 'Prefix notation calculator' do
  it 'can perform addition' do
    expect(pn_calculator "+ 2 2").to eq(4)
    expect(pn_calculator "+ 10 200").to eq(210)
    expect(pn_calculator "+ 0 5 1 9 11").to eq(26)
  end
  it 'can perform subtraction' do
    expect(pn_calculator "- 2 2").to eq(0)
    expect(pn_calculator "- 10 200").to eq(-190)
    expect(pn_calculator "- 0 5 1 9 11").to eq(-26)
  end
  it 'can perform multiplication' do
    expect(pn_calculator "+ 2 2").to eq(4)
    expect(pn_calculator "* 10 200").to eq(2000)
    expect(pn_calculator "* 0 5 1 9 11").to eq(0)
  end
  it 'can perfrom division' do
    expect(pn_calculator "/ 2 2").to eq(1.0)
    expect(pn_calculator "/ 10 200").to eq(0.05)
    expect(pn_calculator "/ 0 5 1 9 11").to eq(0.0)
  end
  it 'returns an error if integers are not provided' do
    expect(pn_calculator "+ * 5").to eq("Values must be integers")
    expect(pn_calculator "* 10 b").to eq("Values must be integers")
  end
  it 'returns an error if a proper operation is not provided' do
    expect(pn_calculator "l 0 5").to eq("Operator is not valid, needs to be +, -, *, /")
    expect(pn_calculator "x 0 5").to eq("Operator is not valid, needs to be +, -, *, /")
  end
end
