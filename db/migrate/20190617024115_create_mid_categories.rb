class CreateMidCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :mid_categories do |t|
      t.string       :name, null: false
      t.references   :top_category, null: false, foreign_key: true
      t.timestamps
    end
  end
end
