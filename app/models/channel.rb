class Channel < ActiveRecord::Base
  validates_presence_of :theme
end
