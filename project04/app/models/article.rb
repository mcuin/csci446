class Article < ActiveRecord::Base
  validates :title, :author_name, :body, :creation_date, presence: true
end
