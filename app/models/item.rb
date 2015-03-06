class Item < ActiveRecord::Base
  validates_presence_of :title
  belongs_to :user
  belongs_to :list
end
