class Translation < ActiveRecord::Base
  attr_accessible :from_lang, :initial_phrase, :to_lang, :translated_word

  before_save do
  	require 'rubygems'
		require 'bing_translator'
		translator = BingTranslator.new('artemgolovin', 'bVo3HdFatkN6Crlcys3CgRpbkpaXXmUydKPA71r8k/g', true)
		self.translated_word  = translator.translate self.initial_phrase, :from => self.from_lang, :to => self.to_lang
  end

  validates :from_lang, presence: true
  validates :to_lang, presence: true
  validates :initial_phrase, presence: true, length: {maximum: 100, message: "Maximum 100 symbols allowed"}
  #validates :translated_word, presence: true
end
