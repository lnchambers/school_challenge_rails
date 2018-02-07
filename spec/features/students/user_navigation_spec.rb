require "rails_helper"

describe "As a user" do
  describe "when I visit any page" do
    it "I can see links to see a list of all students" do
      visit new_student_path

      expect(page).to have_content("All Students")

      visit students_path

      expect(page).to have_content("All Students")
    end

    it "I can see links to create a new student" do
      visit students_path

      expect(page).to have_content("Create Student")

      visit new_student_path

      expect(page).to have_content("Create Student")
    end
  end

  describe "when I visit /students" do
    it "I can click on a students name and be taken to the show page" do
      student = create(:student)
      Student.create!(name: "Opakawagalaga")
      visit students_path

      click_on "#{student.name}"

      expect(current_path).to eq("students/1")
      expect(page).to have_content(student.name)
      expect(page).to_not have_content("Opakawagalaga")
    end
  end
end
