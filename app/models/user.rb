class User < ActiveRecord::Base
  belongs_to :home
  has_many :childs
  has_many :reviews
end
