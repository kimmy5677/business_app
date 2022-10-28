require 'rails_helper'

RSpec.feature "Add Application" do
    scenario "User creates new application" do
        visit "/"
        click_link "New Application"
        fill_in "business_application[title]", with: "Create application"
        fill_in "business_application[about]", with: "Lorem ipsumn"
        click_button "Add Application"

        expect(page).to have_content("Application created!")
        expect(page.current_path).to eq(business_applications_path)
    end

    scenario "Application not created" do 
        visit "/"
        click_link "New Application"
        fill_in "business_application[title]", with: ""
        fill_in "business_application[about]", with: ""
        click_button "Add Application"
        expect(page).to have_content("Application failed to create") 
    end
end

