require 'rspec'
require 'selenium-webdriver'

class AbstractPage
	@@driver = nil

	def initialize(driver)
		@@driver = driver
	end

	def navigateToHomePage
		@@driver.navigate.to('http://disneyworld.disney.go.com')
		return HomePage.new(@@driver)
	end

	def quit
		@@driver.quit
	end

	def getPageTitle
		return @@driver.title
	end
end
