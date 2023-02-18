class CreateMysaunas < ActiveRecord::Migration[6.0]
  def change
    create_table :mysaunas do |t|
      t.string        :title,         null: false
      t.string        :address,       null: false
      t.integer       :prefecture_id, null: false
      t.integer       :customer_id,   null: false
      t.integer       :star_id,       null: false
      t.integer       :price,         null: false
      t.text          :review,        null: false
      t.timestamps
    end
  end
end
