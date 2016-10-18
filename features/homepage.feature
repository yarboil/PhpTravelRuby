Feature: Homepage

  As A user
  I want to use the homepage
  So I can search flights

  Background:
    Given I am on homepage

  Scenario: No result search
    When I set city
    And  I set dates
    And I set number of passengers
