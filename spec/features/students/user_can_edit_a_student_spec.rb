require "rails_helper"

describe "As a user" do
  describe "when I visit /students/:id/edit" do
    it "I can edit a student" do
      visit edit_student_path

      fill_in "student[name]", with: "Opakawagalaga"
      click_on "Update Student"

      expect(current_path).to eq("/students/1")
      expect(page).to have_content("Opakawagalaga")
    end
  end
end
