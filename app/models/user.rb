class User < ActiveRecord::Base
  has_many :pinboards, dependent: :destroy
  has_many :comments, dependent: :destroy
end
