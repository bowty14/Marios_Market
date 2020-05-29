# describe "the add a review process" do
#   it "adds a new review" do
#       visit products_path
#       save_and_open_page
#       click_link "Add a review"
#       fill_in "Please enter name", :with => "Tyler"
#       click_on '5'
#       fill_in "Type your review here", :with => "Very amazing, just wow."
#       click_on 'Create Review'
#       expect(page).to have_content 'Tyler'
#     end
#   end