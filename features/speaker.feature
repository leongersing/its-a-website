Feature: Speaker Features
  As a Speaker at a conference event
  I would like to see comments and rankings of the materials 
  that I have provided to the conference. 
  
  Scenario: View my potential interest
    Given I have presented a session
    When my session has not started
    Then I can see a total count of people planning to attend my talk
    
  Scenario: View my reviews
    Given I have presented a session
    When my session is complete
    Then I can see the overall rating given to me
    And I can review public comments about my session
    And I can review private comments about my session
    But I cannot see who gave what rating score
    