describe "the add a review process" do
    before(:each) do
      Product.destroy.all
    end
  product = Product.create({name: "Egg Whites", cost: 10, country_of_origin: "US"})
  it "adds a new review" do
      visit signin_path
      fill_in :email, :with => "t@t.com"
      fill_in "Password", :with => "Venom9314"
      click_on "Go"
      save_and_open_page
      click_on "Egg Whites"
      click_link "Add a review"
      fill_in "Please enter your name", :with => "Tyler"
      choose(option: "5")
      fill_in "Type your review here", :with => "Very amazing, just wow. I will be recommending this product to everyone I know."
      click_on 'Create Review'
      expect(page).to have_content 'Tyler'
    end
  end

# I am unable to get the add a review test to pass. When the add a product test runs it does so without error and the product "Dragon fruit" is created and is visible on the page when I use save_and_open_page. When this test runs it goes to the products index page where all of the products are listed out. Capybara is unable to find "Dragon Fruit" when I use save_and_open_page it shows the same page that the add a product test shows me but the product "Dragon Fruit" is not there for capybara to click on.