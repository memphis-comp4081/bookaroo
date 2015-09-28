class Author < ActiveRecord::Base
  has_many :books
  validates :year_born, numericality: { less_than_or_equal_to: 2015 }

  def full_name
    "#{first_name} #{last_name}"
  end
  
end
