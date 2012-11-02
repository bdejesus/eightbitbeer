class Batch < ActiveRecord::Base
  belongs_to :brewer
  has_many :log_entries

  validates_presence_of :recipe_id
end
