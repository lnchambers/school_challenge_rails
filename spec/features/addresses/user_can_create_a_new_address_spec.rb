require "rails_helper"

describe "As a user" do
  describe "when I visit students/:id/addresses/new" do
    it "I can create a new address" do
      student = create(:student)
      visit new_student_address_path(student)

      fill_in "address[description]", with: "A sunny side up"
      fill_in "address[street]", with: "123 Egg Way"
      fill_in "address[city]", with: "Oval"
      fill_in "address[state]", with: "Of Being"
      fill_in "address[zip]", with: 38838
      click_on "Create Address"

      expect(current_path).to eq(student_path(student))
      expect(page).to have_content("A sunny side up")
      expect(page).to have_content("123 Egg Way")
      expect(page).to have_content("Oval")
      expect(page).to have_content("Of Being")
      expect(page).to have_content("38838")
    end
  end
end
