class Batch < ActiveRecord::Base
  belongs_to :brewer
  has_many :log_entries
end
