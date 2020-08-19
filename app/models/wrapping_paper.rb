class WrappingPaper < ApplicationRecord
    belongs_to :user
    has_one :inner_text
    has_many :wrapping_paper_images
    has_many :images, through: :wrapping_paper_images

    accepts_nested_attributes_for :user, :images, :inner_text
end
