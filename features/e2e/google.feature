@e2e
Feature: Functional - 001 - Ask for BCP
  Fields validation

  Scenario Outline: A user starts a google search
    Given "Test User" has navigated to Google Page
    When he searches for "<search_argument>"
    Then System should display "<page_title>" as result
    Examples:
      | search_argument | page_title                       |
      | bcp             | Vía BCP                          |
      | interbank       | el tiempo vale más que el dinero |

