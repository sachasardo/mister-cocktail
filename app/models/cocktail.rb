class Cocktail < ActiveRecord::Base
  has_many :doses, dependent: :delete_all
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true, presence: true
end
