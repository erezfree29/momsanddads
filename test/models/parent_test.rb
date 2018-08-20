require 'test_helper'

class ParentTest < ActiveSupport::TestCase
  test "parent does not save without a name" do
    parent = Parent.new(userid:1,town:"london",neighborhood:"barking",age:"30",intrested:"woman",about:"good guy",address:"UK london",sorientation:"stright",countryname:"india")
    assert_not parent.save
  end

   test "downcase address" do
    parent = Parent.new(address: "London Barking")

    assert_equal "london barking", parent.address
  end


end

































    # t.string "name"
    # t.string "photo"
    # t.string "town"
    # t.datetime "created_at", null: false
    # t.datetime "updated_at", null: false
    # t.string "neighborhood"
    # t.string "age"
    # t.string "intrested"
    # t.string "about"
    # t.string "partner"
    # t.string "sorientation"
    # t.string "countryname"
    # t.string "address"
    # t.float "latitude"
    # t.float "longitude"
    # t.bigint "user_id"
    # t.string "partner_photo"
