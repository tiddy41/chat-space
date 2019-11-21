class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users
  validate :name, presence: true, uniqueness: true
end
