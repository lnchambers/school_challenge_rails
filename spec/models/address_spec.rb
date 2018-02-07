require 'rails_helper'

RSpec.describe Address, type: :model do
  describe "Validations" do
    it "is invalid without a description" do
      address = Address.create(street: "Where you live", city: "Broader where you live", state: "But why?", zip: 80657)

      expect(address).to be_invalid
    end

    it "is invalid without a street" do
      address = Address.create(description: "Where you live", city: "Broader where you live", state: "But why?", zip: 80657)

      expect(address).to be_invalid
    end

    it "is invalid without a city" do
      address = Address.create(street: "Where you live", description: "Broader where you live", state: "But why?", zip: 80657)

      expect(address).to be_invalid
    end

    it "is invalid without a state" do
      address = Address.create(street: "Where you live", city: "Broader where you live", description: "But why?", zip: 80657)

      expect(address).to be_invalid
    end

    it "is invalid without a zip" do
      address = Address.create(street: "Where you live", city: "Broader where you live", state: "But why?", description: 80657)

      expect(address).to be_invalid
    end
  end

  describe "Relationships" do
    it "belongs to a student" do
      address = create(:address)
      expect(address).to respond_to(:student)
    end
  end
end
