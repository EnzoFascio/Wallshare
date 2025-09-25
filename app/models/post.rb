class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :content, type: String
  field :image_url, type: String   # <- garante que existe o campo
  field :title, type: String
  field :image, type: String  # aqui o CarrierWave salva o caminho do arquivo
  #has_one_attached :image
  mount_uploader :image, ImageUploader
end
