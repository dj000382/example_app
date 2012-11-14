require 'spec_helper'

describe "User Pages" do
	subject { page }
	
	describe "profile page" do
		let(:user) {FactoryGirl.create(:user)}
		before { visit user_path(user) }

		it {should have_selector('h1', text: user.name)}
		it {should have_selector('title', text: user.name)}
	end
  describe "signup page" do
    before { visit signup_path }

		it {should have_selector('h1', text: 'Sign up')}
		it {should have_selector('title', text: 'Sign up')}
  end
	describe "signup page" do
		visit signup_path
		fill_in "Name", with: "Example User"
		fill_in "Email", with: "user@example.com"
		fill_in "Password", with: "foobar"
		fill_in "Confirmation", with: "foobar"
		expect do
			click_button "Create my account"
		end.to change(User, :count).by(1)
	end
end