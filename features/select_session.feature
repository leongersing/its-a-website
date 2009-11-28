Feature: select a session to provide feedback for.
  As an attendee of the event
  I would like to see the list of sessions
  I would like to select the one that I've attended or plan to attend. 
  
  Scenario: Find a session
    Given I am attending the conference
    When I search for a session by name
    Then I am presented a list of close matches
  
  Scenario: Sort a list of sessions
    Given I am attending the conference
    When I search for a session by name
    Then I am presented a list of close matches
    And I can sort matches by title
    And I can sort matches by speaker
    And I can sort matches by time
  
  Scenario: Select a session
    Given a list of sessions
    When I select one
    Then I am presented the session information in detail
    
  Scenario: Manipulate a session
    Given I am viewing a session's information 
    When I want to communicate my opinions on that session
    Then I indicate that I attended the session
    And I rate the session
    And I rate the speaker
    And I leave a comment for site members
    And I leave a private comment for the speaker
    And I can change my ratings 
    But I cannot leave more than one rating