class CreateInnerTexts < ActiveRecord::Migration[6.0]
  def change
    create_table :inner_texts do |t|
      t.string :inner_text
      t.integer :wrapping_paper_id

      t.timestamps
    end
  end
end
