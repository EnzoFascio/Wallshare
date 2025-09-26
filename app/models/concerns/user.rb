class User
  include Mongoid::Document
  include Mongoid::Timestamps

  # Campos do Devise
  field :email,              type: String, default: ""
  field :encrypted_password, type: String, default: ""

  field :reset_password_token,   type: String
  field :reset_password_sent_at, type: Time
  field :remember_created_at,    type: Time

  # Módulos do Devise
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Campos personalizados
  field :name, type: String

  has_many :posts
end
