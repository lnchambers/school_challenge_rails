require "rails_helper"

describe "As a user" do
  describe "when I visit /courses/:id" do
    it "I see the name of the course and all students enrolled" do
      student = create(:student)
      course = create(:course)
      course.students << student

      visit course_path(course)
      save_and_open_page

      expect(page).to have_content(student.name)
      expect(page).to have_content(course.name)
    end
  end
end
