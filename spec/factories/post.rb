
 FactoryGirl.define do
   factory :post do
     title RandomData.random_name
     body RandomData.random_sentence
     topic
     user
   end
 end
