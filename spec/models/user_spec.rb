require 'rails_helper'

RSpec.describe User, type: :model do
  user = User.new(first_name:"Name",last_name:"Name",fave_color:"Blue",email:"test@test.com",password:"somethingpass")
  it "is not valid without a first name" do
    user.first_name = nil
    expect(user).to_not be_valid
  end
  it "is valid with first name" do
    user.first_name = "Name"
    expect(user).to be_valid
  end
  it "is not valid without a last name" do
    user.last_name = nil
    expect(user).to_not be_valid
    user.last_name = "Name"
  end
  it "is valid with last name" do
    user.last_name = "Name"
    expect(user).to be_valid
  end
  it "is valid without a favorite color" do
    user.fave_color = nil
    expect(user).to be_valid
  end
  it "is valid without a favorite color" do
    user.fave_color = "Blue"
    expect(user).to be_valid
  end
end
