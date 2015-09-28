class Book < ActiveRecord::Base
  belongs_to :my_author, class_name: "Author", foreign_key: "author_id"
end
