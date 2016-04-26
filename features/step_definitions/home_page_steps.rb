Given /^I am logged in$/ do
  page.driver.browser.authorize 'admin', 'admin'
end

When(/^I am on the homepage$/) do
  visit root_path
end

Then(/^I should see the content "(.*)"$/) do |title|
  expect(page).to have_content(title)
end