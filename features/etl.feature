Feature: ETL Extract Transfer Load operations
  As a Conference Organizer 
  I want to provide a feed endpoints to the application
  So that data about my conference can be imported to rate.
  
  Scenario: Parsing
    Given an xml feed of session data
    When I consume the feed
    Then the data is transformed for our application
    And persisted in the data store
    
  Scenario: Adapter
    Given an xml feed of session data
    When I want the feed to be consumed
    Then I can implement a small class to transform the data