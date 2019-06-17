class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string         :first_name,      null: false
      t.string         :last_name,       null: false
      t.string         :kana_last_name,  null: false
      t.string         :kana_first_name, null: false
      t.integer        :birth_year,      null: false
      t.integer        :birth_month,     null: false
      t.integer        :birth_day,       null: false
      t.string         :postal_code,     null: false
      t.string         :prefecture,      null: false
      t.string         :city,            null: false
      t.string         :address,         null: false
      t.string         :profile_text
      t.references     :user,            null: false, foreign_key: true
      t.timestamps
    end
  end
end
