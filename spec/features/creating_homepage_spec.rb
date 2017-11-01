require "rails_helper"

RSpec.feature "Creating Home Page" do
	scenario do
		visit '/'

		expect(page).to have_link('Home')
		expect(page).to have_link('AX Room')
		expect(page).to have_link('Workout Lounge')
		expect(page).to have_link('Workout completion')
	end
end