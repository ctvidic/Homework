require 'rails_helper'

RSpec.describe Test, type: :model do
  subject(:user) do
    FactoryBot.build(:user,
      email: "chrisv.email",
      password: "hello")
  end
  describe "validations" do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_length_of(:password).is_at_least(6) }
  end
  describe "is_password?" do
    it "should validate a password is the password"
        expect(user.is_password?("fasfasdfas")).to be false
    end
  end

  describe "reset_session_token" do
    it "should successfully reset session token"
        old_token = user.session_token
        user.generate_session_token
        expect(user.session).to_not eq(old_token) 
    end
  end

  describe ".find_by_credentials" do 
     it "returns a user when given credentials that exist in database" do
      expect(User.find_by_credentials("chris.email", "hello")).to eq(user)
    end

  end


end
