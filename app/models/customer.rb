class Customer < ActiveRecord::Base
  validates_presence_of :name, :email
  validates :email, uniqueness: true

end
