class User < ApplicationRecord
  has_many :categories, dependent: :destroy
  has_many :expenses, foreign_key: 'author_id', dependent: :destroy
end
