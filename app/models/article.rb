class Article < ApplicationRecord
  validates :title, presence: true
  #コメントアウト
end