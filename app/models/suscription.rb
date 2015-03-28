class Suscription < ActiveRecord::Base
  belongs_to :channel
  belongs_to :customer
  validates :channel, :customer, presence: true
  validates_presence_of :expire_date
  validate :expiration_date_cannot_be_in_the_past



  private
  def expiration_date_cannot_be_in_the_past
    errors.add(:expire_date, "can't be in the past") if !expire_date.blank? && expire_date < Date.today
  end
end
