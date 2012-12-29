class Recipe < ActiveRecord::Base
  belongs_to :brewer
  has_many :steps, :dependent => :destroy
  has_many :ingredients, :through => :steps

  validates_presence_of :name, :style
  validates_uniqueness_of :name

  accepts_nested_attributes_for :steps, :allow_destroy => true

  module StepTypes
    TYPES = [
      'Mash',
      'Bittering',
      'Aroma',
      'Fermeting',
      'Racking',
      'Bottling'
    ]
  end
end
