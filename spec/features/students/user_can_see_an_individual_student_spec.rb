require "rails_helper"

describe "As a user" do
  describe "when I visit student/:id" do
    it "I see the name of a student" do
      student = create(:student)

      visit student_path(student)

      expect(page).to have_content(student.name)
    end
  end
end
