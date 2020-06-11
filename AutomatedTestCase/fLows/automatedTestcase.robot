*** Test Cases ***
Users can write comments
    Given I logged into BBlog website as a user
    And I choose a specific article
    And I wrote a comment
    When I click the Post Comment button
    Then I’m able to see my comment posted