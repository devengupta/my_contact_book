require "rails_helper"

RSpec.describe Contact, type: :model do
  it "has valid contact" do
    expect(FactoryBot.build(:contact).save).to be_truthy
  end
  it "invalid without name" do
    expect(FactoryBot.build(:contact, name: nil).save).to be_falsey
  end
  it "invalid without phone" do
    expect(FactoryBot.build(:contact,phone: nil).save).to be_falsey
  end
  it "invalid without email" do
    expect(FactoryBot.build(:contact,email: nil).save).to be_falsey
  end
  it "invalid with same email" do
    before do
      @contact = FactoryBot.build(:contact).save
      contact_with_same_email = @contact.dup
      contact_with_same_email.email = @contact.email.upcase
      dub_contact_with_same_email = contact_with_same_email.save
    end
    expect(dub_contact_with_same_email).to be_falsey
  end
end