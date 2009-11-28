Feature: Who are you?
  As a user of the system
  I need an easy way to authenticate into the system without
  the overhead of managing an account that I do not plan to maintain
  long term. 
  
  Scenario Outline: Telling us who you are.
    Given I want to use the system
    When I am asked to login
    Then I can authenticate via an existing authentication <system>
    
  Examples: 
    | system    |
    | Facebook  |
    | Twitter   |
    | Google    |
    | OpenID    |
    
  Scenario: Admins are set in stone
    Given I am authenticated
    When I check for admins
    Then I am proven to be a valid conference admin
    
  Scenario: Speakers are known by their email addresses
    Given I am an authenticated speaker
    When I want to access the speaker features
    Then my email address is verified and I'm recognized as the speaker
    