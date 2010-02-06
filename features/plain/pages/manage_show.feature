Background:
Given a page exists with name: "links"

Scenario: Links from a page's show page as admin
Given I am logged in as admin
When I go to the show page of that page
Then I should see links "Edit, Delete, List Pages" at the top and bottom of the page

Scenario: Links from a page's show page as regular user
Given a user exists with username: "ernie"
	And I am logged in as "ernie"
When I go to the show page of that page
Then I should see no links at the top nor bottom of the page

Scenario: Links from a page's show page as guest
When I go to the show page of that page
Then I should see no links at the bottom nor top of the page