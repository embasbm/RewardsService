class Customer < ActiveRecord::Base
  validates_presence_of :name, :email
  validates :email, uniqueness: true
  has_many :suscriptions
  has_many :channels, -> { uniq }, through: :suscriptions

  def get_relevant_rewards
    rewards = []
    channels.each do |channel|
      rewards << Reward.find(channel.get_reward) unless channel.get_reward.nil?
    end
    rewards
  end

end
