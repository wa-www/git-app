## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|
|e-mail|string|null: false, unique: true|
|password|string|null: false|
|groups_users_id|integer|foreign_key: true|

### Association
- has_many :groups_users
- has_many :messages
- has_many :groups


## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|group-name|string|
|groups_users_id|integer|foreign_key: true|

### Association
- has_many :groups_users
- has_many :messages
- has_many :users


## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|body|text|null: false|
|image|string|
|group_id|integer|foreign_key: true|
|user_id|integer|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group


## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user