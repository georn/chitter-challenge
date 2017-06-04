feature 'Sign up to Chitter' do
  scenario 'signing up' do
    visit '/sign_up'
    expect(page.status_code).to eq 200
    fill_in 'email', with: 'youremail@address.com'
    fill_in 'username', with: 'yourusername'
    fill_in 'name', with: 'yourname'
    fill_in 'password', with: 'apassword'
    click_button 'Submit'
    expect(page).to have_content('youremail@address.com')
    expect(page).to have_content('yourusername')
  end

end
