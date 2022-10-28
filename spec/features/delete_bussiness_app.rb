require 'rails_helper'

RSpec.feature "Delete" do
    scenario "User deletes application" do
        visit "/business_applications/7/edit"
        click_link "Destroy"
        expect(page.current_path).to eq(business_applications_path)
    end

end

