class CreateWrappingPaperImages < ActiveRecord::Migration[6.0]
  def change
    create_table :wrapping_paper_images do |t|
      t.integer :wrapping_paper_id
      t.integer :image_id

      t.timestamps
    end
  end
end
