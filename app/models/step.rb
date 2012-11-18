class Step < ActiveRecord::Base
  belongs_to :recipe
  has_many :ingredients

  accepts_nested_attributes_for :ingredients
end