require "rails_helper"

describe "As a user" do
  describe "when I visit student/:id" do
    it "I see the name of a student" do
      student = create(:student)

      visit student_path(student)

      expect(page).to have_content(student.name)
    end

    it "I can see a list of courses the student is taking" do
      student = create(:student)
      course = create(:course)
      binding.pry
      student.courses << course

      visit student_path(student)

      expect(page).to have_content(student.name)
      expect(page).to have_content(course.name)
    end
  end
end
