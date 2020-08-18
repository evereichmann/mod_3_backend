class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :name
      t.string :img_url
      t.boolean :main_image

      t.timestamps
    end
  end
end
