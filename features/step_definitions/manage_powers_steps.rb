Given(/^I'm logged in$/) do
  visit root_path
  click_link 'Sign in'
  fill_in 'Email', :with => 'admin@test.com'
  fill_in 'Password', :with => '12345678'
  click_button 'Log in'
  expect(page).to have_content 'Signed in successfully'
end

When(/^I go to My Powers page$/) do
  visit my_powers_path
  expect(page).to have_content 'My Powers'
end

Then(/^I should see my Powers list$/) do
  visit my_powers_path
  expect(page).to have_css 'div.packery-item'
end


Given(/^I'm on my Power edit Page$/) do
  power = Power.find(6)  
  visit edit_power_path(power)
  expect(page).to have_content 'Editing Power'
end

When(/^I change the title to "Random Item"$/) do
  fill_in 'power_title', :with => 'Random Item'
  click_button 'Update Power'
end

Then(/^I should see the Title changed on Item Page$/) do
  expect(page).to have_content 'Random Item'
end
