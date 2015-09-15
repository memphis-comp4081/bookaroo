class Author < ActiveRecord::Base
  validates :year_born, numericality: { less_than_or_equal_to: 2015 }
end
