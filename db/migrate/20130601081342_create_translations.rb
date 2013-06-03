class CreateTranslations < ActiveRecord::Migration
  def change
    create_table :translations do |t|
      t.string :initial_phrase
      t.string :translated_word
      t.string :from_lang
      t.string :to_lang

      t.timestamps
    end
  end
end
