Feature: Test Optional Rule

  Background:
    * def requestPayload = karate.read('classpath:policyConfigurator/data/optional.json')

  Scenario: With both optional and required rules passing
    * def response = call read('classpath:policyConfigurator/util/validate.feature')
    * match response.response.data[0].failedRuleIds == []
    * match response.response.data[0].optionalFailedRuleIds == []
    * match response.response.data[0].errorMessages == []
    * match response.response.data[0].warningMessages == []
    * match response.response.data[0].value == 0.0
    * match response.response.data[0].valid == true
    * match response.response.data[0].optionalValid == true

  Scenario: With optional rule failing and mandatory rule passing
    * requestPayload.data.values[0].fromCurrency = "IND"
    * def response = call read('classpath:policyConfigurator/util/validate.feature')
    * match response.response.data[0].failedRuleIds == []
    * match response.response.data[0].optionalFailedRuleIds == [1d92b0f9-cf4e-4a66-a739-4ab33c0167b3]
    * match response.response.data[0].errorMessages == []
    * match response.response.data[0].warningMessages == ["Currency not supported IND"]
    * match response.response.data[0].value == 0.0
    * match response.response.data[0].valid == true
    * match response.response.data[0].optionalValid == false