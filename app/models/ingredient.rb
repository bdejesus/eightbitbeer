class Ingredient < ActiveRecord::Base
  validates_presence_of :name, :ingredient_type
  validates_uniqueness_of :name

  scope :grains, where(ingredient_type: 'Grains')
  scope :malts, where(ingredient_type: 'Malts')
  scope :hops, where(ingredient_type: 'Hops')
  scope :yeast, where(ingredient_type: 'Yeast')
  scope :other, where(ingredient_type: 'Other')

end