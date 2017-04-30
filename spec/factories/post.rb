
 FactoryGirl.define do
   factory :post do
     title RandomData.random_name
     body RandomData.random_paragraph
     topic
     user
   end
 end
