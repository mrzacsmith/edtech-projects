require 'rspec'


describe 'Sentence reversing' do
  it 'reverses a string' do
    text_sentence = "backwards am I"
    expect(sentence_reverser(text_sentence)).to eq("I am backwards")
  end
end
