class AddBottomCategoryIdToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :bottom_category, foreign_key: true, null: false
  end
end
