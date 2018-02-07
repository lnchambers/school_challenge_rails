require 'rails_helper'

RSpec.describe Course, type: :model do
  describe "Validations" do
    it "is invalid without a name" do
      course = Course.create()

      expect(course).to be_invalid
    end

    it "is valid with a name" do
      course = create(:course)

      expect(course).to be_valid
    end
  end

  describe "Relationships" do
    it "has many students" do
      course = create(:course)
      expect(course).to respond_to(:students)
    end
  end
end
