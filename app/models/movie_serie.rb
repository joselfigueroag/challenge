class MovieSerie < ApplicationRecord
  has_many :characters

  validates :title, :image, :create_date, :gender, :qualification, presence: true
end
