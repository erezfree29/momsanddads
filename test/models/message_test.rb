require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  test "messages does not save without a sending_parent_id" do
    message = Message.new(content:"sending_parent",receving_parent_id:1)
    assert_not message.save
  end
end
