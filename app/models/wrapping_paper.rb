class WrappingPaper < ApplicationRecord
    belongs_to :user
    has_many :images, through: :wrapping_paper_image
end
