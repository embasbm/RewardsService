require 'test_helper'

class RewardTest < ActiveSupport::TestCase

  def test_valid_reward
    reward = Reward.new description: "CHAMPIONS_LEAGUE_FINAL_TICKET"
    assert reward.valid?, "valid with description"
  end

  def test_invalid_without_description
    reward = Reward.new
    refute reward.valid?, "invalid without a description"
  end
  
end