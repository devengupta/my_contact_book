require "rails_helper"

describe "contacts" do
  describe 'GET contacts#index' do
    context 'when user is logged in' do
      it "should list index page" do
        user = create(:user)
        contacts = create_list(:contact, 10, user: user)
        login_as(user, scope: :user)
        visit contacts_path

        contacts.each do |contact|
          page.should have_content(contact.name)
        end
      end
    end

    context 'when user is not logged in' do
      it "should redirect to login page"
    end
  end
end