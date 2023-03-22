class AuthorSerializer < ActiveModel::Serializer
  attributes :name
  has_one :profile, except: [:id, :created_at, :updated_at]
  has_many :posts, serializer: AuthorPostSerializer
end