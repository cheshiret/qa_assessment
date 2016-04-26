require 'rails_helper'

RSpec.feature "User", :type => :feature do
  scenario "Create a new user" do
    visit "/users/new"

    fill_in "Full name", :with => "My Name"

    click_button "Create Contact"

    expect(page).to have_text("My Name")
  end
end