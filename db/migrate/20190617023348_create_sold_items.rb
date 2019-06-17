class CreateSoldItems < ActiveRecord::Migration[5.2]
  def change
    create_table :sold_items do |t|
      t.string        :sold_item
      t.references    :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
