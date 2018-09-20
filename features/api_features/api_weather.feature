@api
Feature: API - Weather information

  Scenario:  Weather information is requested for a city that exists
    Given the user has the key of the weather serivces
    When the user requests information about the climate of the city of "Lima"
    Then the response status should be 200
    And the service responds with information about the climate of the city of "Lima"

