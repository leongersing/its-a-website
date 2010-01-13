#
# inspired by Ryan Bates screencast
#
/*
* I can comment this way
*/
# and this way
// and this way
Feature: View Presentations
    # Main goal of this project
    In order to view the presentations
    As an attendee
    I want to view and vote on presentations

    Scenario: Presentation List
        Given I have presentations titled Presentation 1
        When I go to the list of presentations
        Then I should see "Presentation 1"
