class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :content, type: String
  field :image_url, type: String   # <- URL direta se quiser
  field :image, type: String       # <- caminho salvo pelo CarrierWave

  # novos campos
  field :tipo, type: String        # "desktop" ou "mobile"
  field :likes_count, type: Integer, default: 0

  mount_uploader :image, ImageUploader
end
