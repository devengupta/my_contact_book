require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact = contacts(:one)
  end

  test "should get index" do
    get contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_url
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post contacts_url, params: { contact: { birthdate: @contact.birthdate, cell: @contact.cell, city: @contact.city, country: @contact.country, des: @contact.des, email: @contact.email, group_id: @contact.group_id, img_url: @contact.img_url, name: @contact.name, phone: @contact.phone, street: @contact.street, user_id: @contact.user_id, zipcode: @contact.zipcode } }
    end

    assert_redirected_to contact_url(Contact.last)
  end

  test "should show contact" do
    get contact_url(@contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_url(@contact)
    assert_response :success
  end

  test "should update contact" do
    patch contact_url(@contact), params: { contact: { birthdate: @contact.birthdate, cell: @contact.cell, city: @contact.city, country: @contact.country, des: @contact.des, email: @contact.email, group_id: @contact.group_id, img_url: @contact.img_url, name: @contact.name, phone: @contact.phone, street: @contact.street, user_id: @contact.user_id, zipcode: @contact.zipcode } }
    assert_redirected_to contact_url(@contact)
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete contact_url(@contact)
    end

    assert_redirected_to contacts_url
  end
end
