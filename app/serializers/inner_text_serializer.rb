class InnerTextSerializer < ActiveModel::Serializer
  attributes :id, :inner_text
  belongs_to :wrapping_paper
end
