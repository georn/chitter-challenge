feature 'Sign up to Chitter' do
  scenario 'signing up' do
    visit ('/sign_up')
    expect(page.status_code).to eq 200
    expect(page).to have_field('email')
    expect(page).to have_field('username')
    expect(page).to have_field('name')
    expect(page).to have_field('password')
  end
end
