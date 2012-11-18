class Ingredient < ActiveRecord::Base
  validates_presence_of :name, :type
  validates_uniqueness_of :name
end