
# coding: utf-8

require 'spec_helper'

describe "StaticPages" do

	describe "Contact" do
		it "should have the content 'Contact'" do
			visit '/static_pages/contact'
			expect(page).to have_content('Contact')
		end
		it "shuld have the title 'Contact'" do
			visit '/static_pages/contact'
			expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
		end
	end 

  describe "Home Page" do

		# BODY内に任意の文字列があるのかを確認する
		it "should have the content 'Sample App'" do
	  	visit '/static_pages/home'
		  expect(page).to have_content('Sample App')
		end

		#	ページのタイトルに任意の文字であるのかを確認する
    it "should have the title 'Home'" do
		  visit '/static_pages/home'
			expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
		end

	end

	describe "Help page" do
		
		# BODY内に任意の文字列があるのかを確認する
		it "should have the content 'Help'" do
			visit '/static_pages/help'
		  expect(page).to have_content('Help')
		end


		#	ページのタイトルに任意の文字であるのかを確認する
    it "should have the title 'Help'" do
       visit '/static_pages/help'
       expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
	end

  describe "About page" do


		# BODY内に任意の文字列があるのかを確認する
		it "should have the content 'About Us'" do
			visit '/static_pages/about'
			expect(page).to have_content('About Us')
 		end


		#	ページのタイトルに任意の文字であるのかを確認する
		it "should have the title 'About US'" do
			visit '/static_pages/about'
			expect(page).to have_title("Ruby on Rails Tutorial Sample App | About US")
		end

	end

#    it "works! (now write some real specs)" do
#      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get static_pages_index_path
#      response.status.should be(200)
end
