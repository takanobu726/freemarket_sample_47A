class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
    # 型             カラム            制約
      t.string      :name,            null: false
      t.string      :image
      t.integer     :price,           null: false
      t.string      :size
      t.text        :description
      t.string      :condition,       null: false
      t.string      :shipping_fee,    null: false
      t.string      :shipping_method, null: false
      t.string      :prefecture,      null: false
      t.references  :user,            null: false, foreign_key: true
      t.timestamps
    end
  end
end
