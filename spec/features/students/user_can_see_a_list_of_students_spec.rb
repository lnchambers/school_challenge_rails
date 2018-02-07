require "rails_helper"

describe "As a user" do
  describe "when I visit /students" do
    it "I can see a list of names" do
      create(:student)
      Student.create(name: "Yello")

      visit students_path

      expect(page).to have_content("Yello")
    end
  end
end
