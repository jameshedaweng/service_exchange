Given(/^I'm logged in$/) do
  email = 'admin@test.com'
  visit root_path
  click_link 'Sign in'
  fill_in 'Email', :with => email
  fill_in 'Password', :with => '12345678'
  click_button 'Log in'
  @current_user = User.find_by_email(email)
  expect(page).to have_content 'Signed in successfully'
end

Given(/^I have some Powers$/) do
  @current_user.powers.count.should >= 0
end

When(/^I go to My Powers page$/) do
  visit my_powers_path
  expect(page).to have_content 'My Powers'
end

Then(/^I should see my Powers list$/) do
  visit my_powers_path
  expect(page).to have_css 'div.packery-item'
end

When(/^I go to edit one of my Powers$/) do
  power = Power.find(6)  
  visit edit_power_path(power)
  expect(page).to have_content 'Editing Power'
end


When(/^I change the title to "Random Item"$/) do
  fill_in 'power_title', :with => 'Random Item'
  click_button 'Update Power'
end

Then(/^I should see the title changed on the Power page$/) do
  expect(page).to have_content 'Random Item'
end

When(/^I got to add new Power Page$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I fill the form and press submit button$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see the text "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end


When(/^I press delete button on one of my Powers$/) do  
  power = Power.find(6)
  page.driver.submit :delete, "/powers/#{6}", {}
end

Then(/^I should see the message 'Power was successfully deleted'$/) do
  expect(page).to have_content 'Power was successfully deleted'
end
