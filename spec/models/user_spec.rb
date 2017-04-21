require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do

      it "is invalid without an email" do
        user = User.new(email: "")
        user.valid?
        expect(user.errors).to have_key(:email)
      end

      it "is invalid without a name" do
        user = User.new(name: "")
        user.valid?
        expect(user.errors).to have_key(:name)
      end


  end
end
