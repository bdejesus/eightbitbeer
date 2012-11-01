class Recipe < ActiveRecord::Base
  belongs_to :brewer
  has_many :steps
  has_many :ingredients

  validates_presence_of :name, :style
  validates_uniqueness_of :name
end
