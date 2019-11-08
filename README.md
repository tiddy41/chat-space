# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## messageテーブル

|Column|Type|Options|
|------|----|-------|
|body|text|
|image|string|
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group_users
- belongs_to :user
- belongs_to :group

## userテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|index: true, null:false| 
|mail|sting|null: false, unique:true|

### Association
- has_many :group,through :group_user
- has_many :message
- has_many :image

## groupテーブル

|Column|Type|Option|
|------|----|------|
|group_name|string|index: true, null: false, foreign_key: true|
|add_name|string|null: false, foreign_key: true

### Association
- belongs_to :user, through : group_user
