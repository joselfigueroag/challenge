class Character < ApplicationRecord
  belongs_to :movie_serie

  validates :name, :image, :age, :weight, :story, presence: true
end
