class Step < ActiveRecord::Base
  belongs_to :recipe
  has_and_belongs_to_many :ingredients

  validates_presence_of :step_type
  accepts_nested_attributes_for :ingredients
end