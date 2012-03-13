class Author < ActiveRecord::Base
  has_attached_file :photo
  has_many :articles
end
