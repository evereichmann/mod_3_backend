class ImageSerializer < ActiveModel::Serializer
  attributes :id, :name, :img_url
  has_many :wrapping_papers
end
