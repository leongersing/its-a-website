Feature: Conference administrator features
  As a Conference admin
  I want to review the comments and scores of the sessions 
  So that I may learn from conference attendees what worked and what didn't. 
  
  Scenario: Viewing Session reviews
    Given I am an authenticated administrator
    When I view sessions 
    Then I should see how attendees are rating event sessions
