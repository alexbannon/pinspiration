class Pin < ActiveRecord::Base
  belongs_to :pinboard
  has_many :comments
end
