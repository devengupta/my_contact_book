FactoryBot.define do
  factory :group do
    name { "Family" }
    after(:create) do |group|
      create(:contact, group: group)
    end
  end
end