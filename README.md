# README

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|

### Asociation
- has_many :items, dependent::destroy
- has_one :profile, dependent::destroy
- has_many :comments, dependent::destroy
- has_many :sell_items, dependent::destroy
- has_many :trade_items, dependent::destroy
- has_many :sold_items, dependent::destroy


## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|image|string||
|price|integer|null: false|
|size|string||
|description|text||
|condition|string|null: false|
|shipping_fee|string|null: false|
|shipping_method|string|null: false|
|prefecture|string|null: false|
|user_id|references|null: false, foreign_key: true|
|bottom_category_id|references|null: false, foreign_key: true|

### Asociation
- has_many :comments, dependent::destroy
- has_many :items_brands
- has_many :brands, through: :items_brands
- belongs_to :user
- belongs_to :bottom_category


## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Asociation
- has_many :items_brands
- has_many :items through: :items_brands


## items_brandsテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|references|foreign_key: true|
|brand_id|references|foreign_key: true|

### Asociation
- belongs_to :item
- belongs_to :brand


## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|body|text||
|user_id|references|foreign_key: true|
|item_id|references|foreign_key: true|

### Asociation
- belongs_to :user
- belongs_to :item


## profilesテーブル
|Column|Type|Options|
|------|----|-------|
|first_name|string|null: false|
|last_name|string|null: false|
|kana_first_name|string|null: false|
|kana_last_name|string|null: false|
|birth_year|integer|null: false|
|birth_month|integer|null: false|
|birth_day|integer|null: false|
|postal_code|string|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|address|string|null: false|
|profile_text|string||
|user_id|references|null: false, foreign_key: true|

### Asociation
- belongs_to :user


## sell_itemsテーブル
|Column|Type|Options|
|------|----|-------|
|sell_item|string||
|user_id|references|null: false, foreign_key: true|

### Asociation
- belongs_to :user


## sold_itemsテーブル
|Column|Type|Options|
|------|----|-------|
|sold_item|string||
|user_id|references|null: false, foreign_key: true|

### Asociation
- belongs_to :user


## trade_itemsテーブル
|Column|Type|Options|
|------|----|-------|
|trade_item|string||
|user_id|references|null: false, foreign_key: true|

### Asociation
- belongs_to :user


## top_categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Asociation
- has_many :mid_categories


## mid_categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|top_categories_id|references|null: false, foreign_key: true|

### Asociation
- has_many :bottom_categories
- belongs_to :top_category


## bottom_categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|mig_categories_id|references|null: false, foreign_key: ture|

### Asociation
- has_many :items
- belongs_to :mid_category
