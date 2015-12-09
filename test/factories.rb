FactoryGirl.define do
  factory :comment do
  	message "So lame"
  	rating "1_star"
  	association :user
  	association :place
  end

  factory :user do
  	sequence :email do |n|
  		"myemail#{n}@gmail.com"
  	end
  	password "password"
  end

  factory :place do
  	name "This Restaurant"
  	description "A fantastic place to eat"
  	address "123 Main Street, San Francisco, CA 94105"
  	latitude(37.791424)
  	longitude(-122.394399)
  	association :user
  end
end