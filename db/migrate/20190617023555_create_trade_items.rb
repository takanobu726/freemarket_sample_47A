class CreateTradeItems < ActiveRecord::Migration[5.2]
  def change
    create_table :trade_items do |t|
      t.string       :trade_item
      t.references   :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
