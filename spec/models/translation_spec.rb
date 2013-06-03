require "spec_helper"

describe Translation do
  it "create & check translation Eng-Polish" do
    trans1 = Translation.create!(from_lang: 'en', initial_phrase: 'Look', to_lang: 'pl')

     expect(Translation.last.translated_word).to eq('Wygląd')
  end

  it "create & check translation Spanish-English" do
    trans1 = Translation.create!(from_lang: 'es', initial_phrase: 'niña', to_lang: 'en')

     expect(Translation.last.translated_word).to eq('girl')
  end

  it "check if empty request fails" do
  	trans1 = Translation.new(from_lang: 'es', to_lang: 'en')
  	trans1.initial_phrase = ''
  	assert trans1.invalid?, "Expected to be invalid but turned out to be valid"
  	assert !trans1.save
  end

  it "check if tooooooooo long request fails" do
  	trans1 = Translation.new(from_lang: 'es', to_lang: 'en')
  	trans1.initial_phrase = 'check if tooooooooo long request fails check if tooooooooo long request fails check if tooooooooo long request fails check if tooooooooo long request fails'
  	assert trans1.invalid?, "Expected to be invalid but turned out to be valid"
  	assert !trans1.save
  end
end