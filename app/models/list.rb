class List < ActiveRecord::Base
  has_many :lists
  has_many :items
  belongs_to :user
  
  validates_presence_of :title
  
  
end
