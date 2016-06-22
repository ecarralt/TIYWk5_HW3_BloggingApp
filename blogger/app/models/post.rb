class Post < ActiveRecord::Base
  # auto linked to posts table
  validates :title presence: true, :body
end
