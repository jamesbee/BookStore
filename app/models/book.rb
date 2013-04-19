class Book < ActiveRecord::Base
    attr_accessible :book_info, :onsale
    validate :onsale, numericality: {greater_than_or_equal_to: 0}
end
