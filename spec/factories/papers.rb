FactoryGirl.define do
  factory :paper do
   title "COMPUTING MACHINERY AND INTELLIGENCE"
   venue "Mind 49: 433-460"
   year 1950
   authors []
  end
  factory :paper2, class: Paper do
    title "computing machinery and intelligence2"
    venue "mind 49: 433-4605"
    year 1968
  end
end
