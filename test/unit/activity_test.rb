require 'test_helper'

class ActivityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def test_activity_new
    activity = Activity.new(name: "lacrosse")
    Activity.find_by_name("lacrosse")
  end
  
end
