require 'rails_helper'

RSpec.describe Match, type: :model do
  describe "validations" do
    it "is invalid without a date" do
      match = Match.new(date: nil)
      match.valid?
      expect(match.errors).to have_key(:date)
    end

    it "is invalid without a user" do
      match = Match.new(user: nil)
      match.valid?
      expect(match.errors).to have_key(:user)
    end

    it "is invalid without a matched user" do
      match = Match.new(matched_user: "")
      match.valid?
      expect(match.errors).to have_key(:matched_user)
    end
  end
end
