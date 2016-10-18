Feature: Search Page

  As a user
  I was to search
  So I can see results

  Background:
    Given I am on homepage

  Scenario Displayed no search results
    And I set 'city'
    And I set dates
    And I set number of passengers
    When I search
    Then I should see no search results
