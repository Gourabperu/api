@api
Feature: API - Weather information


  Background:
    Given the user has the key of the weather services

  @SmokeTest
  Scenario:  Weather information is requested for a city that exists
    When the user requests information about the climate of the city of "Lima"
    Then the response status should be 200
    And the service responds with information about the climate of the city of "Lima"
  @RegressionTest
  Scenario:  Weather information is requested for a city that no exists
    When the user requests information about the climate of the city of "Lima1"
    Then the response status should be 404
    And the service responds detail information about error
  @InProgress
  Scenario Outline:  Weather information is requested for a city that exits with API Key invalid
    When the user requests information about the climate of the "<city>" sending invalid keys "<key>"
    Then the response status invalid key should be <codeError>


    Examples:Only Unauthorized
     |city    | key                            |codeError|
     |Lima    |e8474f0a8de0ac76e5b5a50db1d50a5x|401      |
     |Cali    |e8474f0a8de0ac76e5b5a50db1d50a5y|401      |
     |Quito   |e8474f0a8de0ac76e5b5a50db1d50a5z|401      |


