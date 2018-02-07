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
end
