FactoryGirl.define do
	factory :user do
		name "Jimmy"
		email "foobar@example.com"
		password "coucou"
		password_confirmation "coucou"
	end
end
