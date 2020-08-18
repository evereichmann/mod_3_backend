class Image < ApplicationRecord
    has_many :wrapping_papers, through: :wrapping_paper_image
end
