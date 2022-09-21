Feature: web demo

  Scenario: Check Events when Verbose OFF
    Then Send WEB JS "sec.setVerbose(false)"
    Then Click on ["Change Storage Type"]
    Then Capture WEB Events
    Then Check WEB Events Count equal [2]

  Scenario: Check Events when Verbose OFF then ON
    Then Send WEB JS "sec.setVerbose(false)"
    Then Click on ["Change Storage Type"]
    Then Capture WEB Events
    Then Check WEB Events Count equal [4]
    Then Send WEB JS "sec.setVerbose(true)"
    Then Click on ["Change Storage Type"]
    Then Capture WEB Events
    Then Check WEB Events Count equal [1]