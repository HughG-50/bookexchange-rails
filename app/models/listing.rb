class Listing < ApplicationRecord
  belongs_to :author
  belongs_to :genre
  has_many :questions, dependent: :destroy
end
