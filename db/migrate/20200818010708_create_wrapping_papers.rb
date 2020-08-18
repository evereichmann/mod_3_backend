class CreateWrappingPapers < ActiveRecord::Migration[6.0]
  def change
    create_table :wrapping_papers do |t|
      t.string :name
      t.integer :layout
      t.integer :user_id

      t.timestamps
    end
  end
end
