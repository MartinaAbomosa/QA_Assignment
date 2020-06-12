*** Settings ***
Documentation     Example Gherkin Style Test
Resource          ${EXECDIR}/library/page_object/writeComment.robot

*** Test Cases ***
Users can write comments
    Given I logged into BBlog website as a user     martina.abomosa@capco.com     Qa2020
    And I choose a specific article
    ${Global_random_comment}=    Generate Random String    5    [LOWER]
    Set Global Variable      ${Global_random_comment}
    And I wrote a comment    ${Global_random_comment}
    When I click the Post Comment button
    Then I’m able to see my comment posted