class Article < ActiveRecord::Base
  validates :title, :author_name, :body, :creation_date, presence: true
  belongs_to :author
end

class Article
  self.per_page = 10
end
