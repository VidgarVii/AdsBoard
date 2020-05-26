class Ad < ActiveRecord::Base
  validates_presence_of :title, :description, :user_id
end
