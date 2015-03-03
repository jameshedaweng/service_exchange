Given(/^I go to the sign up page$/) do
  visit root_path
  click_on "Sign up"
end

Then(/^I put in my email and password$/) do
  fill_in "user_email", with: "dummy@test.com"
  fill_in "user_password", with: "12345678"
  fill_in "user_password_confirmation", with: "12345678"
end

When(/^I press sign up$/) do
  click_on "Sign up"
end

Then(/^I should be notified that my account is created$/) do
  expect(page).to have_content "Welcome! You have signed up successfully."
end