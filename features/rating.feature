Feature: rating sessions
  As an attendee
  I want to rate sessions I attend
  So that I may convey feedback
  
  Scenario: Rating
    Given a session
    And the session occurs in progress or in the past
    When I view the session details
    And specify that I attended
    Then I can rate the session
    And provide a comment with my rating
    