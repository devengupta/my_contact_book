require "rails_helper"

RSpec.describe Group, type: :model do
  it "has only valid string" do
    expect(FactoryBot.build(:group).save).should be_truthy
  end
end