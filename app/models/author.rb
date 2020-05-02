class Author < ApplicationRecord
    has_many :listings, dependent: :destroy
end
