class Post < ActiveRecord::Base
  # auto linked to posts table

  # attr_accessor :id, :title, :body

    # def initialize(id, title, body)
    #   @id = id
    #   @title = title
    #   @artist_id = body
    # end

   validates :title, presence: true
   validates :body, presence: true

end
