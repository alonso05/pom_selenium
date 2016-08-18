require_relative 'abstract_page'
require_relative 'ticket_page'
require_relative 'home_page'

class HomePage < AbstractPage

	def initialize(driver)
		super(driver)
	end

	def navigateToTickets
		@@driver.find_element(:xpath, "//*[@class='gnbCategory gnbParksAndTickets']/a").click

		return TicketPage.new(@@driver)
	end
end