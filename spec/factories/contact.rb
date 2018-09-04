FactoryBot.define do
  factory :contact do
    name { "test user" }
    email { "test@gmail.com" }
    phone { "+91-2449729775" }
    user_id { 1 }
    # factory :contact_with_family do
    #   after(:create) do |contact|
    #   contact.group_id = FactoryBot.create(:group)
    #   $stderr.puts "@@@@@@@@@@@@@@@@@@@@@@@@@"
    #   $stderr.puts	contact.inspect
    #   $stderr.puts "@@@@@@@@@@@@@@@@@@@@@@@@@"
    #   end
    # end
    group_id {1}
  end
end