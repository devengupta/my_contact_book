require "rails_helper"

  RSpec.describe User, type: :model do
    it "has a valid factory" do
      expect(FactoryBot.build(:user).save).to be_truthy
    end
    it "it is invalid without email" do
      expect(FactoryBot.build(:user,email: nil).save).to be_falsey
    end
    it "it is invalid without password" do
      expect(FactoryBot.build(:user, password: nil).save).to be_falsey
    end
  end