user = User.create({email: "y@y.com", password: "Qwerty1", password_confirmation: "Qwerty1", admin: "t"})

describe "the add a review process" do
  it "adds a new review" do
      visit signin_path
      fill_in :email, :with => "y@y.com"
      fill_in "Password", :with => "Qwerty1"
      click_on "Go"
      click_link 'Add a new product'
      fill_in "Name", :with => 'Cheesecake'
      fill_in "Cost", :with => 35
      fill_in "Country of origin", :with => "US"
      click_on "Create Product"
      click_on "Cheesecake"
      click_link "Add a review"
      fill_in "Please enter your name", :with => "Tyler"
      choose(option: "5")
      fill_in "Type your review here", :with => "Very amazing, just wow. I will be recommending this product to everyone I know."
      click_on 'Create Review'
      expect(page).to have_content 'Tyler'
    end
  end

