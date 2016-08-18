require 'rspec'
require 'selenium-webdriver'
require_relative 'home_page'

describe 'Testing the Ticket Page' do 

	app = nil

	before(:each) do
		app = AbstractPage.new(Selenium::WebDriver.for(:firefox))
	end

	after(:each) do
		app.quit
	end

	it 'Navigate to Tickets Pages from menu bar' do
		ticketsPage = app
		.navigateToHomePage
		.navigateToTickets

		puts ticketsPage.getPageTitle

		expect(ticketsPage.getPageTitle).to be == 'Disney Theme Park Tickets | Orlando, Florida | Walt Disney World Resort'
	end
	
end