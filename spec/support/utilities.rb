include ApplicationHelper

#def full_title(page_title)
#	base_title = "Ruby on Rails Tutorial Sample App"
#	if page_title.empty? 
#		base_title
#	else
#		"#{base_title}|#{page_title}"
#	end
#end

def filling_sign_up_page_with_valid_information
	fill_in "Name",        with: "Example User"
    fill_in "Email",       with: "user@example.com"
    fill_in "Password",    with: "foobar"
    fill_in "Confirmation",with: "foobar"
end



def sign_in(user, options={})
	if options[:no_capybara]
		# Sign in when not using Capybara.
		remember_token = User.new_remember_token
		cookies[:remember_token] = remember_token
		user.update_attribute(:remember_token, User.encrypt(remember_token))		
	else
		visit signin_path
		fill_in "Email",    with: user.email
		fill_in "Password", with: user.password
		click_button "Sign in"
	end
end