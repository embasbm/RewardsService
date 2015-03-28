class Channel < ActiveRecord::Base
  validates_presence_of :theme
  has_many :suscriptions
  has_many :customers, -> { uniq }, through: :suscriptions
end
