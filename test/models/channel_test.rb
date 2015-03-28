require 'test_helper'

class ChannelTest < ActiveSupport::TestCase

  def test_valid_channel
    channel = Channel.new theme: "MUSIC"
    assert channel.valid?, "valid with theme"
  end

  def test_invalid_channel_without_theme
    channel = Channel.new
    refute channel.valid?, "invalid without a theme"
  end
  
end
