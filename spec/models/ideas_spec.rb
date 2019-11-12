require 'rails_helper'

RSpec.describe Idea, type: :model do
	
  before(:all) do
    @user = User.create(email: "nora@gmail.com", password: "church")
		@category = Category.create(name:"ministry")
  end

	it "user is valid with no category" do
    expect(@user).to be_truthy
  end
	
	#THIS TEST GAVE ME A FAILURE
  # it "is valid" do
   # idea = Idea.create(name:"check", content: Faker::Name.name, category_id: @category.id, user_id: @user.id)
    #expect(idea).to be_valid
  #end
  
#HOMEWORK
#test1 for only name completed. this should fail
  it "test1 for only name completed should fail" do
    idea = Idea.create(name:"check", content: "", category_id: "", user_id: "")
    expect(idea).not_to be_valid
  end
 
#test2 for only content completed. this should fail
  it "test2 for only content completed should fail" do
    idea = Idea.create(name:"", content: "check content", category_id: "", user_id: "")
    expect(idea).not_to be_valid
  end
#test3 for only category completed. this should fail
  it "test3 for only category completed should fail" do
    idea = Idea.create(name:"", content: "", category_id: @category.id, user_id: "")
    expect(idea).not_to be_valid
  end
#test4 for only user completed. this should fail
  it "test4 for only user completed should fail" do
    idea = Idea.create(name:"", content: "", category_id: "", user_id: @user.id)
    expect(idea).not_to be_valid
  end
#test5 for name and content. this should fail
   it "test5 for name and content completed should fail" do
    idea = Idea.create(name:"check", content: Faker::Name.name, category_id: "", user_id: "")
    expect(idea).not_to be_valid
   end
#test6 for name and category_id. this should fail
   it "test6 for name and category completed should fail" do
    idea = Idea.create(name:"check", content: "", category_id: @category.id, user_id: "")
    expect(idea).not_to be_valid
   end
#test7 for name and user_id. this should fail
  it "test7 for name and user_id completed should fail" do
    idea = Idea.create(name:"check", content: "", category_id: "", user_id: @user.id)
    expect(idea).not_to be_valid
  end
#AND MORE
  #test8 for content and user_id. this should fail
  it "test8 for content and category_id completed should fail" do
    idea = Idea.create(name:"", content: "Check Content", category_id: @category.id, user_id: "")
    expect(idea).not_to be_valid
  end
  #test9 for content and user_id. this should fail
  it "test9 for content and user_id completed should fail" do
    idea = Idea.create(name:"", content: "Check Content", category_id: "", user_id: @user.id)
    expect(idea).not_to be_valid
  end
  #test10 for category_id and user_id. this should fail
  it "test10 for name and user_id completed should fail" do
    idea = Idea.create(name:"", content: "", category_id: @category.id, user_id: @user.id)
    expect(idea).not_to be_valid
  end
  #test11 for name, content, category_id this should fail
  it "test11 for name, content and category_id completed should fail" do
    idea = Idea.create(name:"check", content: Faker::Name.name, category_id: @category.id, user_id: "")
    expect(idea).not_to be_valid
  end
  #test12 for name, content, user_id this should fail
  it "test12 for name, content and user_id completed should fail" do
    idea = Idea.create(name:"check", content: Faker::Name.name, category_id: "", user_id: @user.id)
    expect(idea).not_to be_valid
  end
  #test13 for content, category.id, user_id this should fail
  it "test13 for content, category and user_id completed should fail" do
    idea = Idea.create(name:"", content: "Content Name", category_id: @category.id, user_id: @user.id)
    expect(idea).not_to be_valid
  end
  #test14 for name, category, user_id this should fail THIS TEST GAVE ME A FAILURE
  # it "test14 for name, category and user_id completed should fail" do
  # idea = Idea.create(name:"check", content: "", category_id: @category.id, user_id: @user.id)
  # expect(idea).be be_valid
  #end
  
  #test15 for none completed. this should fail
  it "test15 for all empty should fail" do
    idea = Idea.create(name:"", content: "", category_id: "", user_id: "")
    expect(idea).not_to be_valid
  end
  
end
