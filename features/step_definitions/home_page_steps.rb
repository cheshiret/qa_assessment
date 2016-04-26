# Given /^I perform HTTP authentication as "([^\"]*)\/([^\"]*)"$/ do |username, password|
#   puts "id/pswd: #{username}/#{password}"
#   ### Following works ONLY if performed first before even going to a page!!!
#   if page.driver.respond_to?(:basic_auth)
#     puts 'Responds to basic_auth'
#     page.driver.basic_auth(username, password)
#   elsif page.driver.respond_to?(:basic_authorize)
#     puts 'Responds to basic_authorize'
#     page.driver.basic_authorize(username, password)
#   elsif page.driver.respond_to?(:browser) && page.driver.browser.respond_to?(:basic_authorize)
#     puts 'Responds to browser_basic_authorize'
#     page.driver.browser.basic_authorize(username, password)
#   else
#     raise "I don't know how to log in!"
#   end
# end
Given /^I am logged in$/ do
  page.driver.browser.authorize 'admin', 'admin'
end

When(/^I am on the homepage$/) do
  visit root_path
end

Then(/^I should see the content "(.*)"$/) do |title|
  page.should have_content(title)
  #page.should have_css('a', :text => title)
end