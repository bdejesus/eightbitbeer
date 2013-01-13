class Ingredient < ActiveRecord::Base
  has_and_belongs_to_many :recipes
  has_and_belongs_to_many :steps

  validates_presence_of :name, :ingredient_type
  validates_uniqueness_of :name

  scope :ordered, order('name ASC')
  scope :grains, ordered.where(ingredient_type: 'Grains')
  scope :malts, ordered.where(ingredient_type: 'Malts')
  scope :hops, ordered.where(ingredient_type: 'Hops')
  scope :yeast, ordered.where(ingredient_type: 'Yeast')
  scope :other, ordered.where(ingredient_type: 'Other')

end