Background:
Given a page exists with name: "links"

Scenario: Links from a page's show page as admin
Given I am logged in as admin "johan"
When I go to the show page of that page
Then I should see links "Edit, Delete, List Pages" at the bottom of the page

Scenario: Links from a page's show page
Given a user exists with username: "ernie"
	And I am logged in as "ernie"
When I go to the show page of that page
Then I should see no links at the bottom of the page