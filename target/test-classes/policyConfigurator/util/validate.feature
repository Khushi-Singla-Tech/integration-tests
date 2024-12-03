Feature: Call Validate API

  Scenario: Call Validate API
    Given url validateUrl
    And header Authorization = bearerToken
    And header Content-Type = 'application/json'
#    And header provider = 'SERVER_TOKEN_SYMMETRIC'
#    And header source = 'ems'
    And request requestPayload
    When method post
    Then status 200