class Customer < ActiveRecord::Base
  validates_presence_of :name, :email
  validates :email, uniqueness: true
  has_many :suscriptions
  has_many :channels, -> { uniq }, through: :suscriptions
end
