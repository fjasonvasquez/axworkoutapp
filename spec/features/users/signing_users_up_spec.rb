require "rails_helper"

RSPec.feature "Users signup" do
	before do
		@john = User.create!(email: "john@example.com", 
												 password; "password")

	end

	scenario "with valid credentials" do 
		visit "/"

		click_link "Sign up"
		fill_in "Email", with: "john@example.com"
		fill_in "Password", with: "password"
		fill_in "Password confirmation", with: "password"
		click_button "Sign up"

		expect(page).to have_content("You have signed up successfully.")
		expect(page).to have_content("Signed in as #{(@john.email)}")
	end
end