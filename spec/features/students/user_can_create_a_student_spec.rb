require "rails_helper"

describe "As a user" do
  describe "when I visit /students/new" do
    it "I can create a new student" do
      visit new_student_path

      fill_in "student[name]", with: "Opakawagalaga"
      click_on "Create Student"

      expect(current_path).to eq("/students/1")
      expect(page).to have_content("Opakawagalaga")
    end
  end
end
