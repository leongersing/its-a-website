Feature: attendee features
  As an Attendee
  I want to id myself to the conference and establish my existing social networks
  So that I do not have to re-establish those connections
  
  Scenario: Twitter User
    Given a valid Twitter User Account
    When registering for the application 
    Then I can validate my identity via Twitter.
  
  Scenario: OpenID User
    Given a valid OpenID User Account
    When registering for the application 
    Then I can validate my identity via OpenID.
    
  Scenario: Facebook User
    Given a valid Facebook User Account
    When registering for the application 
    Then I can validate my identity via Facebook.
    
  Scenario: Planning to attend a session
    Given a valid User Account
    When I plan to attend a session
    Then my friends are updated that I plan to be there. 
    
  Scenario: People I should meet
    Given a valid User Account
    And I am currently at a valid conference
    When I review my details
    Then People not in my social graph that have similar agendas and ratings are presented as people I should meet
    
  Scenario: People I should REALLY meet
    Given a valid User Account
    And I am currently at a valid conference
    When I review my details
    Then People not in my social graph that have vastly different agendas and ratings are presented as people I should REALLY meet
  