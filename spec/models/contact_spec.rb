require 'rails_helper'

RSpec.describe Contact, type: :model do
	it "has a valid factory" do
		contact = FactoryGirl.create(:contact)
		expect(contact).to be_valid
	end

  it "is invalid without a firstname" do
  	contact = FactoryGirl.build(:contact, first_name: nil)
  	expect(contact).not_to be_valid
  end

  it "is invalid without a lastname" do
  	contact = FactoryGirl.build(:contact, last_name: nil)
  	expect(contact).not_to be_valid
  end

  it "returns a contact's full name as a string" do
  	contact = FactoryGirl.build(:contact)
  	expect(contact.name).to eq("#{contact.first_name} #{contact.last_name}")
  end
end
