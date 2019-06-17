class CreateSellItems < ActiveRecord::Migration[5.2]
  def change
    create_table :sell_items do |t|
      t.string      :sell_item
      t.references  :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
