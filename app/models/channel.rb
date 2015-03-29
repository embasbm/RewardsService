class Channel < ActiveRecord::Base
  validates_presence_of :theme
  has_many :suscriptions
  has_many :customers, -> { uniq }, through: :suscriptions

  # test doc combined with the seeds file:
  # The following table describes the codes
  # for the channel subscriptions and the associated rewards.
  def get_reward
    case id
      when 1 then return 1
      when 3 then return 2
      when 5 then return 3
      else return nil
    end
  end
end
