Scenario Outline: Display error name messages for new pages
Given a page exists with name: "links"
Given I am logged in as admin
When I go to the new admin page page
	And I fill in "Name" with "<input>"
	And I press "Create"
Then I should see "<message>" as error message for page name
Examples:
|	input	|	message								|
|				|	can't be blank				|
|	links	|	has already been take	|

Scenario Outline: Display error navigation label messages for new pages
Given a page exists with navlabel: "Links"
Given I am logged in as admin
When I go to the new admin page page
	And I fill in "Navigation Label" with "<input>"
	And I press "Create"
Then I should see "<message>" as error message for page navlabel
Examples:
|	input	|	message								|
|				|	can't be blank				|
|	Links	|	has already been take	|

Scenario Outline: Display error position messages for new pages
Given a page exists with navlabel: "Links"
Given I am logged in as admin
When I go to the new admin page page
	And I fill in "Position" with "<input>"
	And I press "Create"
Then I should see "<message>" as error message for page position
Examples:
|	input	|	message					|
|				|	is not a number	|