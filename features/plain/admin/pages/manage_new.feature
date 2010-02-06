Scenario: View page's new form
Given I am logged in as admin
When I go to the new admin page page
Then I should see "New Page" as title
	And the "Name" field should be empty
	And I should see "The name the page will have in the URL-field." as hint for page name
	And the "Title" field should be empty
  And I should see "The title of the page." as hint for page title
	And the "Subtitle" field should be empty
  And I should see "The subtitle of the page." as hint for page subtitle
	And the "Navigation Label" field should be empty
  And I should see "What the page will be named in the navigation bar." as hint for page navlabel
	And the "Position" field should contain "0"
  And I should see "Pages will be listed in ascending order in the navigation bar from left to right according to this number." as hint for page position
	And the "Body" field should be empty
	And I should see links "List Pages" at the top and bottom of the page

@allow-rescue
Scenario: Guests cannot edit users
When I go to the new admin page page
Then I should be redirected to the root page
	And I should see "You are not authorized to access this page."

@allow-rescue
Scenario: Regular users cannot edit users
Given a user exists with username: "ernie"
	And I am logged in as "ernie"
When I go to the new admin page page
Then I should be redirected to the root page
	And I should see "You are not authorized to access this page."


Scenario: Add descriptions to the fields (NOT IMPLEMENTED)
Given not implemented