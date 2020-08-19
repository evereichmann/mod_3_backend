class WrappingPaperSerializer < ActiveModel::Serializer
  attributes :id, :name, :layout, :user_id
  belongs_to :user
  has_one :inner_text
  has_many :images
end
