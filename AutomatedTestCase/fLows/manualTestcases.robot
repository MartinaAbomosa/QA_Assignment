*** Test Cases ***
Users can write comments
    Given I logged into BBlog website as a user
    And I choose a specific article
    And I wrote a comment
    When I click the Post Comment button
    Then I’m able to see my comment posted

User can write more than one comment
    Given I logged into BBlog website as a user
    And I choose a specific article
    And I wrote a comment
    And I click the Post Comment button
    And I’m able to see my comment posted
    When I wrote a comment
    And I click the Post Comment button
    Then I’m able to see my comment posted

Guests cannot Write comments
    Given I navigated to BBlog website
    When I choose a specific article
    Then I’m able to see this “Sign in or Sign up to add comments on this article”

Comment validation shouldn’t accept empty comment
    Given I logged into BBlog website as a user
    And I choose a specific article
    When I leave the comment empty
    And I click the Post Comment button
    Then I get error message

User refresh after write a comment it should still there
    Given I logged into BBlog website as a user
    And I choose a specific article
    And I wrote a comment
    And I click the Post Comment button
    And I’m able to see my comment posted
    When I refresh the page
    Then I’m able to see my comment posted

User logout and log back in after write a comment it should still there
    Given I logged into BBlog website as a user
    And I choose a specific article
    And I wrote a comment
    And I click the Post Comment button
    And I’m able to see my comment posted
    When I logout
    And I logged in to BBlog website as a user
    And I choose a specific article
    Then I’m able to see my comment posted

User use the back button and Return to the article after write a comment it should still there
    Given I logged into BBlog website as a user
    And I choose a specific article
    And I wrote a comment
    And I click the Post Comment button
    And I’m able to see my comment posted
    When I click back
    And I choose a specific article
    Then I’m able to see my comment posted


Other user can see the comments

    Given another user logged into BBlog website
    When he chooses a specific article
    Then He is able to see all comments

Check date format for the posted comments

    Given I logged into BBlog website as a user
    And I choose a specific article
    And I wrote a comment
    And I click the Post Comment button
    When I’m able to see my comment posted
    Then date format should be month dd,yyyy

User able to delete his comments

    Given I logged in to BBlog website as a user
    And I choose a specific article
    And I wrote a comment
    And I click the Post Comment button
    When I’m able to see my comment posted
    And I click the delete icon
    Then my comment gets deleted


Users only able to delete their comments

    Given another user logged into BBlog website
     When he chooses a specific article
    And He is able to see all comments
    Then He can not delete other users’ comments

User refresh after delete a comment it should’ve gone

    Given I logged in to BBlog website as a user
    And I choose a specific article
    And I wrote a comment
    And I click the Post Comment button
    And I’m able to see my comment posted
    And I click the delete icon
    And my comment gets deleted
    When I refresh the page
    Then my comment gets deleted

User logout and log back in after delete a comment it should’ve gone

    Given I logged in to BBlog website as a user
    And I choose a specific article
    And I wrote a comment
    And I click the Post Comment button
    And I’m able to see my comment posted
    And I click the delete icon
    And my comment gets deleted
    When I logout
    And I logged in to BBlog website as a user
    And I choose a specific article
    Then my comment gets deleted


User use the back button and Return to the article after delete a comment it should’ve gone

    Given I logged in to BBlog website as a user
    And I choose a specific article
    And I wrote a comment
    And I click the Post Comment button
    And I’m able to see my comment posted
    And I click the delete icon
    And my comment gets deleted
    When I click back
    And I choose a specific article
    Then my comment gets deleted




