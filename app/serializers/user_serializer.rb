class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :bio, :avatar, :email

  has_many :article_ratings
    has_many :articles, through: :article_ratings
    has_many :game_ratings
    has_many :games, through: :game_ratings
end