require 'rspec'

def sentence_reverser str
  str.split.reverse.join(' ')
end

describe 'Sentence reversing' do
  it 'reverses a string' do
    text_sentence = "backwards am I"
    expect(sentence_reverser(text_sentence)).to eq("I am backwards")
  end
end

puts sentence_reverser 'These are happy damn days'
