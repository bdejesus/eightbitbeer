class Recipe < ActiveRecord::Base
  belongs_to :brewer
  has_many :steps, :ingredients
end
