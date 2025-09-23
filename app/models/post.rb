class Post
  include Mongoid::Document

  field :title, type: String
  field :content, type: String
  field :image_url, type: String   # <- garante que existe o campo
end
