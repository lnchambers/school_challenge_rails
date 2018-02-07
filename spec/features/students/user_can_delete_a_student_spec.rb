require "rails_helper"

describe "As a user" do
  describe "when I visit /students" do
    it "I can delete a student muhahahahahaha" do
      student = create(:student)

      visit students_path

      expect(page).to have_content(student.name)

      click_on "Delete"

      expect(page).to_not have_content(student.name)
    end
  end
end
