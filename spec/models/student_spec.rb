require 'rails_helper'

RSpec.describe Student, type: :model do
  describe "Validations" do
    it "is invalid without a name" do
      student = Student.create()

      expect(student).to be_invalid
    end

    it "is valid with a name" do
      student = create(:student)

      expect(student).to be_valid
    end
  end

  describe "Relationships" do
    it "has many addresses" do
      student = create(:student)
      expect(student).to respond_to(:addresses)
    end
  end
end
