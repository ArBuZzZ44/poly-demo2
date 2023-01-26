class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.string :image_uid
      t.string :title

      t.timestamps null: false
    end
  end
end
