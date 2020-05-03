class Genre < ApplicationRecord
    has_many :listings, dependent: :destroy
    # enum is a data type consisting of a hash table of named values
    # i.e. the genre type can't be anything other than these two values
    # can call Genre.fiction and returns all fiction books
    enum category: { fiction: 0, non_fiction: 1 }
end
