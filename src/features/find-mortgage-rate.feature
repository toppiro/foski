Feature: Find a mortgage rate
  As a new customer
  I want to find the mortgage rates available
  So that I can decide whether to switch my mortgage to Nationwide

  @Pending
  Scenario: Find mortgage rates
    Given I open the url "https://www.nationwide.co.uk"
	When I unput the following data in the table below
	| Nationwide mortgage | Type of mortgage | Property value | Mortgage amount | Term | Filter1 | Filter2  |
	| No				  | changing lender  | 3000000		  | 150000			| 30   | Fixed	 | with Fee |
	And I click Apply
	Then I am navigated to the 'Start your remortgage application' page
